# Restaurant Search Backend

Simple Node.js + Express backend with MySQL to search restaurants by dish name and price range.

## What is included
- `server.js` - main Express server
- `db.js` - MySQL connection pool (uses env vars)
- `routes/search.js` - route definition
- `controllers/searchController.js` - query logic
- `seed.sql` - SQL to create schema + sample data
- `package.json` - dependencies & scripts
- `.env.example` - example env variables

## Setup (local)

1. Install MySQL and create a user (or use root).
2. Import `seed.sql` into your MySQL server:
   ```bash
   mysql -u root -p < seed.sql
   ```
3. Copy `.env.example` to `.env` and set values if needed.
4. Install dependencies:
   ```bash
   npm install
   ```
5. Start server:
   ```bash
   npm start
   ```
6. Example request:
   ```
   GET http://localhost:3000/search/dishes?name=biryani&minPrice=150&maxPrice=300
   ```

## Notes
- The search does a case-insensitive substring match on `dishName`.
- Each order row represents a single ordered item for simplicity.
