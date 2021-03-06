<?php 
    if(!array_key_exists('ID', $_GET) || empty($_GET['ID'])) {
        header('Location: index.php');
    }

    require_once ORDER_CONTROLLER;

    $order = getOrderById($_GET['ID']);
    $packages = getPackagesByOrder($_GET['ID']);

?>

<?php if (empty($order)) : ?>
    <?php  require_once HOME_DIR.'404.php'; ?>
<?php else: ?>
    <div class = "container">
    <h2> Megrendelés #<?=$order['id']; ?></h2>
    <h3>Megrendelő adatai:</h3>
    <table class = "table table-striped">
        <tbody>
            <tr>
                <td>Név: </td>
                <td><?=$order['first_name']." ".$order["last_name"]; ?></td>
            </tr>
            <tr>
                <td>Email cím: </td>
                <td><?=$order['email']; ?></td>
            </tr>
            <tr>
                <td>Utca, házszám: </td>
                <td><?=$order['address']; ?></td>
            </tr>
            <tr>
                <td>Irányítószám: </td>
                <td><?=$order['zip']; ?></td>
            </tr>
            <tr>
                <td>Város: </td>
                <td><?=$order['city']; ?></td>
            </tr>
            <tr>
                <td>Ország: </td>
                <td><?=$order['country']; ?></td>
            </tr>
            <tr>
                <td>Megrendelés időpontja: </td>
                <td><?=$order['time']; ?></td>
            </tr>
        </tbody>
    </table>

    <h3>Termékek:</h3>
    <table class = "table">
        <thead class="thead-light">
            <tr>
                <th>#</th>
                <th>Termék</th>
                <th>Mennyiség</th>
                <th>Ár</th>
            </tr>
        </thead>
        <tbody>
            <?php $i =0; ?>
            <?php $count = 0; ?>
            <?php $total = 0; ?>
            <?php foreach ($packages as $item): ?>
            <?php
                ?>
                <tr>
                    <?php $i++ ?>
                    <?php $total += (int)$item['amount'] * (int)$item['price']; ?>
                    <?php $count += (int)$item['amount']; ?>
                    <th scope="row"><?=$i ?></th>
                    <td><a href="index.php?P=product&ID=<?=$item['product_id']; ?>"><?=$item['product_brand'].' '.$item['product_name']; ?></a></td>
                    <td><?=$item['amount']; ?></td>
                    <td><?=number_format((int)$item['amount'] * (int)$item['price']).' Ft'; ?></td>
                <?php endforeach; ?>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td></td>
                <td>Összsen:</td>
                <td><?=$count; ?> </td>
                <td><?=number_format($total) .' Ft'; ?> </td>
                <td></td>
            </tr>
        </tfoot>
    </table>
    </div>
        
<?php endif; ?>
