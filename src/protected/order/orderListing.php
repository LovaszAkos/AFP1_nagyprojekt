<?php

    require_once ORDER_CONTROLLER;
    $items = listOrders();

?>

    <h2>Megrendelések</h2>

<?php if(count($items) == 0) : ?>
    <p id="alert">Nincsenek megrendelések!</p>
<?php else: ?>
    <div class = "row">

        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Rendelés id</th>
                <th scope="col">Felhasználó Id</th>
                <th scope="col">Név</th>
                <th scope="col">Cím</th>
                <th scope="col">Kiszállítva</th>
                <th scope="col">Megrendelés időpontja</th>

            </tr>
            </thead>
            <?php foreach ($items as $item): ?>
                <tbody>
                    <tr>
                    <td><a href="index.php?P=order&ID=<?=$item['id']; ?>"><?=$item['id'] ?></a></td>
                    <td><?=$item['email'] ?></td>
                    <td><?=$item['last_name'] ." ". $item['first_name'] ?></td>
                    <td><?=$item['address'] ?></td>
                    <td><?=$item['complete'] ?></td>
                    <td><?=$item['time'] ?></td>

                    </tr>
                </div>
            <?php endforeach ?>
    </div>
<?php endif; ?>