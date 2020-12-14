<?php
    function addOrder() {
        $query = "SELECT p.id as id, product_brand, product_name, quantity, price FROM products p, cart c WHERE c.product_id = p.id AND c.user_id = :user_id";
        $params = [
            ':user_id' => $_SESSION['uid']
        ];

        require_once DATABASE_CONTROLLER;

        $items = getList($query, $params);

        $query = "SELECT first_name, last_name, address, zip, city, country FROM users WHERE id = :id";
        $params = [
            ':id' => $_SESSION['uid']
        ];

        $customerinfo = getRecord($query, $params);

        $query = "INSERT INTO orders (user_id, first_name, last_name, address, zip, city, country) VALUES
            (:user_id, :first_name, :last_name, :address, :zip, :city, :country)";

        $params = [
            ':user_id' => $_SESSION['uid'],
            ':first_name' => $customerinfo['first_name'],
            ':last_name' => $customerinfo['last_name'],
            ':address' => $customerinfo['address'],
            ':zip' => $customerinfo['zip'],
            ':city' => $customerinfo['city'],
            ':country' => $customerinfo['country']
        ];

        require_once DATABASE_CONTROLLER;
        $orderid = executeDMLid($query, $params);

        foreach ($items as $item) {
            $query = "INSERT INTO packages VALUES (:order_id, :product_id, :quantity)";

            $params = [
                ':order_id' => $orderid,
                ':product_id' => $item['id'],
                ':quantity' => $item['quantity']
            ];

            require_once DATABASE_CONTROLLER;
            executeDML($query, $params);
        }

        $query = "DELETE FROM cart WHERE user_id = :id";
        $params = [
            ':id' => $_SESSION['uid']
        ];

        require_once DATABASE_CONTROLLER;
        executeDML($query, $params);
    }


    function listOrders(){
        $query = "select * from orders INNER JOIN users on orders.user_id = users.id ";

        require_once DATABASE_CONTROLLER;
        return getList($query);
    }

    function getOrderById($id) {
        $query = "SELECT * FROM orders o INNER JOIN users u ON u.id = o.user_id INNER JOIN packages p ON p.order_id = o.id WHERE o.id = :id";
        $params = [
            ':id' => $id
        ];


        require_once DATABASE_CONTROLLER;
        return getRecord($query, $params);
    }

?>