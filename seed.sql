-- Seed file for restaurant_db
CREATE DATABASE IF NOT EXISTS restaurant_db;
USE restaurant_db;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS restaurants;

CREATE TABLE restaurants (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  city VARCHAR(100)
);

CREATE TABLE menu_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  restaurantId INT,
  dishName VARCHAR(255),
  price INT,
  FOREIGN KEY (restaurantId) REFERENCES restaurants(id)
);

CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  menuItemId INT,
  FOREIGN KEY (menuItemId) REFERENCES menu_items(id)
);

-- Sample restaurants
INSERT INTO restaurants (name, city) VALUES
('Hyderabadi Spice House', 'Hyderabad'),
('Biryani Palace', 'Bangalore'),
('Dindigul Thalappakatti', 'Chennai'),
('Coastal Bites', 'Kochi'),
('Royal Biryani Corner', 'Mumbai');

-- Sample menu items
INSERT INTO menu_items (restaurantId, dishName, price) VALUES
(1, 'Chicken Biryani', 220),
(1, 'Mutton Biryani', 300),
(2, 'Chicken Biryani', 180),
(2, 'Veg Biryani', 150),
(3, 'Chicken Biryani', 250),
(4, 'Egg Biryani', 160),
(5, 'Chicken Biryani', 200);

-- Sample orders (each row represents one order of that menu item)
INSERT INTO orders (menuItemId) VALUES
(1),(1),(1),(1),(1),(1),(1),(1),(1),(1), -- 10 orders for restaurant 1 chicken biryani
(2),(2),(2),(2),(2),(2),(2),(2),(2),     -- 9 orders for restaurant 1 mutton biryani
(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3), -- 11 orders for restaurant 2 chicken biryani
(4),(4),(4),(4),(4),                       -- 5 orders for restaurant 2 veg biryani
(5),(5),(5),(5),                           -- 4 orders for restaurant 3 chicken biryani
(6),(6),(6),(6),(6),(6),(6),               -- 7 orders for restaurant 4 egg biryani
(7),(7),(7),(7),(7),(7);                   -- 6 orders for restaurant 5 chicken biryani
