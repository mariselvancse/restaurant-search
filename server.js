require('dotenv').config();
const express = require('express');
const searchRoutes = require('./routes/search');
const app = express();
app.use(express.static("public"));

app.use(express.json());

app.use('/search', searchRoutes);
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
