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
## 📸 Screenshots

### 🔵 Search Page
![Search Page](images/search_page.png)

### After Search Results
![After Search](images/after_search_page.png)

### 🟢 Order Success
![Order Success](images/order_success.png)

### 🟡 Update Quantity
![Update Quantity](images/update_quantity_page.png)

### 🔴 Cancel Order
![Cancel Order](images/cancel_order_page.png)

### Cancel Success
![Cancel Success](images/cancel_success_page.png)

### 🟣 Placed Orders - First Page
![Placed Orders First Page](images/placed_order_first_page.png)

### Placed Orders - Main Page
![Placed Orders Page](images/placed_orders_page.png)

### 🗄️ Database Login
![DB Login](images/db_login_page.png)

### Database After Login
![DB After Login](images/db_after_login_page.png)

### MySQL Tables
![MySQL Tables](images/mysql_tables.png)

### MySQL Values After Update
![MySQL Updated Values](images/mysql_updated_values.png)

### 🖥️ Server Starting
![Server Starting](images/server_starting_page.png)

### Server Running
![Server Running](images/server_running_page.png)

### ❗ Error - No Data
![No Data](images/no.png)



