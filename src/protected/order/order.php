<?php 
    if(!array_key_exists('ID', $_GET) || empty($_GET['ID'])) {
        header('Location: index.php');
    }

    require_once ORDER_CONTROLLER;

    $order = getOrderById($_GET['ID']);

?>

<?php if (empty($order)) : ?>
    <?php  require_once HOME_DIR.'404.php'; ?>
<?php else: ?>
    <h2> Megrendelés #<?=$order['id']; ?></h2>
    <?php 
        foreach ($order as $key => $value) {
            echo $key."<br>";
        }

    ?>
<?php endif; ?>
