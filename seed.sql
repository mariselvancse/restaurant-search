-- Seed file for restaurant_db
CREATE DATABASE IF NOT EXISTS restaurant_db;
USE restaurant_db;

-- Drop existing tables
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS restaurants;

-- -------------------------------
-- Restaurants Table
-- -------------------------------
CREATE TABLE restaurants (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  city VARCHAR(100)
);

-- -------------------------------
-- Menu Items Table
-- -------------------------------
CREATE TABLE menu_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  restaurantId INT,
  dishName VARCHAR(255),
  price INT,
  FOREIGN KEY (restaurantId) REFERENCES restaurants(id)
);

-- -------------------------------
-- Orders Table
-- -------------------------------
CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  menuItemId INT,
  FOREIGN KEY (menuItemId) REFERENCES menu_items(id)
);

-- -----------------------------------
-- 15 Restaurants (ALL Bangalore)
-- -----------------------------------
INSERT INTO restaurants (name, city) VALUES
('Biryani Palace', 'Bangalore'),
('Hyderabadi Spice House', 'Bangalore'),
('Empire Restaurant', 'Bangalore'),
('Meghna Foods', 'Bangalore'),
('Nandhana Palace', 'Bangalore'),
('Dindigul Thalappakatti', 'Bangalore'),
('Salt Mango Tree', 'Bangalore'),
('Royal Biryani Corner', 'Bangalore'),
('Coastal Bites', 'Bangalore'),
('Spice Hub', 'Bangalore'),
('Flavours of South', 'Bangalore'),
('Bangalore Biryani House', 'Bangalore'),
('Andhra Ruchulu', 'Bangalore'),
('Biryani Adda', 'Bangalore'),
('Malabar Kitchen', 'Bangalore');

-- -----------------------------------
-- 75 Menu Items (5 items per restaurant)
-- -----------------------------------
INSERT INTO menu_items (restaurantId, dishName, price) VALUES
(1, 'Chicken Biryani', 180),(1, 'Mutton Biryani', 260),(1, 'Egg Biryani', 140),(1, 'Veg Biryani', 120),(1, 'Paneer Biryani', 150),
(2, 'Chicken Biryani', 190),(2, 'Chicken Fry', 160),(2, 'Mutton Fry', 280),(2, 'Mutton Biryani', 300),(2, 'Veg Biryani', 130),
(3, 'Chicken Biryani', 200),(3, 'Chicken Kabab', 170),(3, 'Mutton Kabab', 250),(3, 'Veg Fried Rice', 120),(3, 'Egg Fried Rice', 110),
(4, 'Hyderabadi Biryani', 220),(4, 'Paneer Biryani', 180),(4, 'Veg Pulao', 130),(4, 'Chicken Curry', 160),(4, 'Mutton Curry', 300),
(5, 'Andhra Chicken Biryani', 210),(5, 'Nalli Biryani', 330),(5, 'Veg Meals', 100),(5, 'Chicken Meals', 150),(5, 'Fish Curry', 200),
(6, 'Thalappakatti Biryani', 250),(6, 'Chicken 65', 160),(6, 'Mutton Sukka', 240),(6, 'Egg Rice', 110),(6, 'Paneer Rice', 140),
(7, 'Fish Meals', 180),(7, 'Kerala Chicken Biryani', 200),(7, 'Beef Fry', 260),(7, 'Prawn Fry', 300),(7, 'Veg Kerala Meals', 100),
(8, 'Royal Chicken Biryani', 230),(8, 'Mutton Special Biryani', 320),(8, 'Egg Roast', 140),(8, 'Veg Curry', 100),(8, 'Chicken Roast', 190),
(9, 'Coastal Chicken Biryani', 240),(9, 'Prawn Biryani', 310),(9, 'Fish Fry', 220),(9, 'Egg Curry', 120),(9, 'Veg Meals', 90),
(10, 'Spicy Chicken Biryani', 210),(10, 'Paneer Tikka', 180),(10, 'Veg Biryani', 140),(10, 'Dal Fry', 100),(10, 'Jeera Rice', 90),
(11, 'South Indian Meals', 120),(11, 'Chicken Roast', 190),(11, 'Mutton Chops', 290),(11, 'Veg Kurma', 110),(11, 'Curd Rice', 80),
(12, 'Bangalore Style Biryani', 200),(12, 'Egg Biryani', 150),(12, 'Veg Biryani', 130),(12, 'Paneer Curry', 140),(12, 'Chicken Curry', 170),
(13, 'Andhra Chicken Fry', 160),(13, 'Andhra Biryani', 220),(13, 'Veg Meals', 90),(13, 'Chicken Meals', 140),(13, 'Mutton Fry', 300),
(14, 'Special Chicken Biryani', 240),(14, 'Kabab Platter', 260),(14, 'Veg Fried Rice', 130),(14, 'Egg Biryani', 150),(14, 'Paneer Biryani', 170),
(15, 'Malabar Chicken Biryani', 260),(15, 'Kappa Biryani', 280),(15, 'Fish Curry', 220),(15, 'Veg Meals', 100),(15, 'Kerala Parotta', 40);

-- -----------------------------------
-- Orders (5–10 orders per menu item)
-- -----------------------------------
INSERT INTO orders (menuItemId) VALUES
-- Items 1 to 10
(1),(1),(1),(1),(1),(1),(1),(1),(1),(1),
(2),(2),(2),(2),(2),(2),(2),
(3),(3),(3),(3),(3),(3),(3),(3),(3),
(4),(4),(4),(4),(4),
(5),(5),(5),(5),(5),(5),
(6),(6),(6),(6),(6),(6),(6),(6),
(7),(7),(7),(7),
(8),(8),(8),(8),(8),(8),(8),
(9),(9),(9),(9),(9),(9),
(10),(10),(10),(10),(10),

-- Items 11 to 20
(11),(11),(11),(11),(11),(11),
(12),(12),(12),(12),(12),
(13),(13),(13),(13),(13),(13),(13),
(14),(14),(14),(14),
(15),(15),(15),(15),(15),
(16),(16),(16),(16),(16),(16),(16),(16),
(17),(17),(17),(17),
(18),(18),(18),(18),(18),(18),(18),
(19),(19),(19),(19),(19),
(20),(20),(20),(20),(20),

-- Items 21 to 30
(21),(21),(21),(21),(21),(21),(21),(21),
(22),(22),(22),(22),(22),
(23),(23),(23),(23),(23),
(24),(24),(24),(24),(24),(24),
(25),(25),(25),(25),(25),
(26),(26),(26),(26),(26),(26),(26),
(27),(27),(27),(27),
(28),(28),(28),(28),(28),(28),
(29),(29),(29),(29),(29),
(30),(30),(30),(30),(30),

-- Items 31 to 40
(31),(31),(31),(31),(31),(31),
(32),(32),(32),(32),(32),
(33),(33),(33),(33),(33),(33),(33),
(34),(34),(34),(34),
(35),(35),(35),(35),(35),
(36),(36),(36),(36),(36),(36),
(37),(37),(37),(37),
(38),(38),(38),(38),(38),
(39),(39),(39),(39),(39),
(40),(40),(40),(40),(40),

-- Items 41 to 50
(41),(41),(41),(41),(41),
(42),(42),(42),(42),(42),(42),
(43),(43),(43),(43),(43),
(44),(44),(44),(44),(44),
(45),(45),(45),(45),(45),
(46),(46),(46),(46),(46),(46),(46),
(47),(47),(47),(47),
(48),(48),(48),(48),(48),(48),
(49),(49),(49),(49),(49),
(50),(50),(50),(50),(50),

-- Items 51 to 60
(51),(51),(51),(51),(51),(51),
(52),(52),(52),(52),
(53),(53),(53),(53),(53),
(54),(54),(54),(54),(54),
(55),(55),(55),(55),(55),
(56),(56),(56),(56),(56),(56),
(57),(57),(57),(57),
(58),(58),(58),(58),(58),
(59),(59),(59),(59),(59),
(60),(60),(60),(60),(60),

-- Items 61 to 75
(61),(61),(61),(61),(61),(61),
(62),(62),(62),(62),
(63),(63),(63),(63),(63),
(64),(64),(64),(64),(64),
(65),(65),(65),(65),(65),
(66),(66),(66),(66),(66),(66),
(67),(67),(67),(67),
(68),(68),(68),(68),(68),
(69),(69),(69),(69),(69),
(70),(70),(70),(70),(70),
(71),(71),(71),(71),(71),
(72),(72),(72),(72),(72),
(73),(73),(73),(73),(73),
(74),(74),(74),(74),(74),
(75),(75),(75),(75),(75);
