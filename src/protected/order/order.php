<?php 
    if(!array_key_exists('ID', $_GET) || empty($_GET['ID'])) {
        header('Location: index.php');
    }

    require_once ORDER_CONTROLLER;

    $order = getOrderById($_GET['ID']);

?>

<?php if (empty($order)) : ?>
    <?php    require_once PRODUCT_DIR.'notfound.php'; ?>
<?php else: ?>
    sdsf
<?php endif; ?>
