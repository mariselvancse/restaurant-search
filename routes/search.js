const express = require('express');
const router = express.Router();
const { searchDish } = require('../controllers/searchController');
router.get('/dishes', searchDish);
module.exports = router;
