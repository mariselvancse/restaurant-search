# 🍽️ Restaurant Search & Order Management API  
A Node.js + MySQL backend application that allows users to search restaurants by dish name, price range, and also place & manage food orders.  
Includes a simple HTML frontend for interacting with the API.

---

## 🚀 Features

### 🔍 Search Module
- Search restaurants by dish name  
- Filter by minimum and maximum price  
- Shows:
  - Restaurant name  
  - City  
  - Dish name  
  - Price  
  - Total orders  

### 🛒 Order Module
- Place new food orders  
- View all placed orders  
- Update order quantity  
- Cancel orders  
- Order history with:
  - Dish details  
  - Restaurant details  
  - Quantity  
  - Timestamp  

### 🖥️ Frontend UI
- `index.html` — Search restaurants & place orders  
- `placed_orders.html` — View, update, cancel orders  

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|------------|
| Backend | Node.js, Express.js |
| Database | MySQL |
| Frontend | HTML, CSS, JavaScript |
| Hosting Options | Render / Railway / GitHub Pages |

---

## 📁 Project Folder Structure
restaurant-search-backend/
│
├── controllers/
│ ├── searchController.js
│ └── placedOrderController.js
│
├── routes/
│ ├── search.js
│ └── placedOrderRoutes.js
│
├── public/
│ ├── index.html
│ └── placed_orders.html
│
├── db.js
├── server.js
├── seed.sql
├── package.json
└── README.md

Screenshots Section
Search Feature
Search Page - images/search_page.png

After Search Results - images/after_search_page.png

Order Placement
Order Success - images/order_success.png

Update Order Quantity
Update Quantity Popup - images/update_quantity_page.png

Cancel Order
Cancel Order Page - images/cancel_order_page.png

Cancel Success Page - images/cancel_success_page.png

Placed Orders Management
Placed Orders – First Page - images/placed_order_first_page.png

Placed Orders – Main Page - images/placed_orders_page.png

Database Screens
Database Login Page - images/db_login_page.png

Database After Login - images/db_after_login_page.png

MySQL Tables - images/mysql_tables.png

MySQL Data View - images/db_page.png

MySQL Values After Update - images/mysql_updated_values.png

Backend Server Screens
Server Starting - images/server_starting_page.png

Server Running - images/server_running_page.png



