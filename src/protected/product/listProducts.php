<?php
    require_once PRODUCT_CONTROLLER;
    $category = $_GET['category'];
    $items = getProductsByCategory($category);
?>