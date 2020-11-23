<?php

    require_once ORDER_CONTROLLER;
    $id = $_GET['id'];
    $items = getOrdersById($id);

?>

    <h2>Megrendelések</h2>

<?php if(count($items) == 0) : ?>
    <p id="alert">Nincsenek megrendelések!</p>
<?php else: ?>
    <div class = "row">

        <table class="table table-striped">
            <thead>
            <tr>

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

                    <td><?=$item['user_id'] ?></td>
                    <td><?=$item['last_name' + 'first_name'] ?></td>
                    <td><?=$item['address'] ?></td>
                    <td><?=$item['complete'] ?></td>
                    <td><?$item['time'] ?></td>

                    </tr>
                </div>
            <?php endforeach ?>
    </div>
<?php endif; ?>