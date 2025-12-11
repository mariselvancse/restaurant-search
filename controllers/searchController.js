const db = require('../db');

exports.searchDish = async (req, res) => {
  const { name, minPrice, maxPrice } = req.query;

  if (!name || minPrice === undefined || maxPrice === undefined) {
    return res.status(400).json({ message: 'name, minPrice, maxPrice required' });
  }

  const query = `
    SELECT 
      r.id AS restaurantId, 
      r.name AS restaurantName, 
      r.city,
      m.id AS menuItemId,          
      m.dishName, 
      m.price AS dishPrice,
      COUNT(o.id) AS orderCount
    FROM restaurants r
    JOIN menu_items m ON r.id = m.restaurantId
    LEFT JOIN orders o ON m.id = o.menuItemId
    WHERE LOWER(m.dishName) LIKE ?
      AND m.price BETWEEN ? AND ?
    GROUP BY m.id
    ORDER BY orderCount DESC
    LIMIT 10;
  `;

  const values = [
    `%${name.toLowerCase()}%`,
    Number(minPrice),
    Number(maxPrice)
  ];

  try {
    const [rows] = await db.query(query, values);
    return res.json({ restaurants: rows });
  } catch (err) {
    console.error(err);
    return res.status(500).json({ message: 'Server Error' });
  }
};
