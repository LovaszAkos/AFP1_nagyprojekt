<?php
    define('BASE_DIR', './');
    define('PROTECTED_DIR', BASE_DIR.'protected/');
    define('PUBLIC_DIR', BASE_DIR.'public/');
    define('DATABASE_CONTROLLER', PROTECTED_DIR.'database.php');
    define('USER_DIR', PROTECTED_DIR.'user/');
    define('USER_CONTROLLER', USER_DIR.'userController.php');
    define('PRODUCT_DIR', PROTECTED_DIR.'product/');
    define('PRODUCT_CONTROLLER', PRODUCT_DIR.'productController.php');
    define('IMG_DIR', PUBLIC_DIR.'img/');

    define('DB_TYPE', 'mysql');
    define('DB_HOST', 'localhost');
    define('DB_NAME', 'audio');
    define('DB_USER', 'root');
    define('DB_PASS', '');
    define('DB_CHARSET', 'utf8');
?>