const express = require("express");
const router = express.Router();

const { 
    placeOrder, 
    viewPlacedOrders,
    cancelOrder,
    updateQuantity
} = require("../controllers/placedOrderController");

router.post("/place", placeOrder);               // Create order
router.get("/all", viewPlacedOrders);            // View all orders
router.delete("/cancel/:orderId", cancelOrder);  // Cancel order
router.put("/update/:orderId", updateQuantity);  // Update quantity

module.exports = router;
