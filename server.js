require('dotenv').config();
const express = require('express');
const app = express();

// ✅ MUST COME FIRST (before routes)
app.use(express.json());

// Serve static files
app.use(express.static("public"));

// Routes
const searchRoutes = require('./routes/search');
const placedOrderRoutes = require('./routes/placedOrderRoutes');

app.use('/search', searchRoutes);
app.use('/placed-orders', placedOrderRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
