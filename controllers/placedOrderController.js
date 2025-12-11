const db = require('../db');

// PLACE ORDER
exports.placeOrder = async (req, res) => {
    const { menuItemId, quantity, customerName } = req.body;

    if (!menuItemId)
        return res.status(400).json({ error: "menuItemId required" });

    const qty = quantity || 1;

    const query = `
        INSERT INTO placed_orders (menuItemId, quantity, customerName)
        VALUES (?, ?, ?)
    `;

    try {
        const [result] = await db.query(query, [
            menuItemId,
            qty,
            customerName || null
        ]);

        res.json({
            message: "Order placed successfully!",
            orderId: result.insertId
        });

    } catch (err) {
        console.error("Insert Error:", err);
        res.status(500).json({ error: "Database insert failed" });
    }
};

// VIEW ALL ORDERS
exports.viewPlacedOrders = async (req, res) => {
    const query = `
        SELECT 
            o.id AS orderId,
            o.quantity,
            o.order_time,
            o.customerName,
            m.dishName,
            m.price,
            r.name AS restaurantName,
            r.city
        FROM placed_orders o
        JOIN menu_items m ON o.menuItemId = m.id
        JOIN restaurants r ON m.restaurantId = r.id
        ORDER BY o.id DESC;
    `;

    try {
        const [results] = await db.query(query);
        res.json({ orders: results });

    } catch (err) {
        console.error("Select Error:", err);
        res.status(500).json({ error: "Database fetch failed" });
    }
};

// CANCEL ORDER
exports.cancelOrder = async (req, res) => {
    const { orderId } = req.params;

    if (!orderId)
        return res.status(400).json({ error: "orderId required" });

    try {
        const [result] = await db.query(
            `DELETE FROM placed_orders WHERE id = ?`,
            [orderId]
        );

        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Order not found" });
        }

        res.json({ message: "Order cancelled successfully!" });

    } catch (err) {
        console.error("Cancel Error:", err);
        res.status(500).json({ error: "Database delete failed" });
    }
};

// UPDATE ORDER QUANTITY
exports.updateQuantity = async (req, res) => {
    const { orderId } = req.params;
    const { quantity } = req.body;

    if (!orderId || !quantity)
        return res.status(400).json({ error: "orderId and quantity required" });

    try {
        const [result] = await db.query(
            `UPDATE placed_orders SET quantity = ? WHERE id = ?`,
            [quantity, orderId]
        );

        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Order not found" });
        }

        res.json({ message: "Order quantity updated successfully!" });

    } catch (err) {
        console.error("Update Error:", err);
        res.status(500).json({ error: "Database update failed" });
    }
};
