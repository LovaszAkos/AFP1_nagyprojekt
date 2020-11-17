<?php

function UserRegister($email, $password, $first_name, $last_name, $address, $zip, $city, $country) {
    $query = "SELECT id FROM users email = :email";
    $params = [ ':email' => $email ];

    require_once DATABASE_CONTROLLER;
    $record = getRecord($query, $params);
    if(empty($record)) {
        $query = "INSERT INTO users (first_name, last_name, email, password, address, zip, city, country) VALUES (:first_name, :last_name, :email, :password, :address, :zip, :city, :country)";
        $params = [
            ':first_name' => $first_name,
            ':last_name' => $last_name,
            ':email' => $email,
            ':password' => sha1($password),
            ':address' => $address,
            ':zip' => $zip,
            ':city' => $city,
            ':country' => $country
        ];

        if(executeDML($query, $params))
            header('Location: index.php?P=login');
    }
    return false;
}

?>
