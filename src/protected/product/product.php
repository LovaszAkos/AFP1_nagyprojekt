<?php  
    if(!array_key_exists('ID', $_GET) || empty($_GET['ID'])) {
        header('Location: index.php');
    }

    $product = getProduct($_GET['ID']);

?>
<?php 
    if(array_key_exists('d', $_GET) && !empty($_GET['d']) && $_SESSION['permission'] >= 1) {
        if (!deleteProduct($_GET['d'])) {
            echo '<p id = "alert>Hiba a törlés során</p>';
        }
    }
    
?>
<?php
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['toCart'])) {
        if(isUserLoggedIn()) {
                $postData = [
                'quantity' => $_POST['quantity'],
                'product_id' => $_POST['product_id']
            ];

            if($postData['quantity'] < 1) {
                echo "<p id='alert'>Mennyiség nem megfelelő</p>";
            }
            else if(!tocart($postData['product_id'], $postData['quantity'])) {
                echo "<p id='alert'>Nincs elegendő a raktáron</p>";
            }
            else {
                echo "<p id=info>Hozzáadva a kosárhoz</p>";
            }
        }
        else {
            echo '<p id = "alert">Kérjük jelntkezz be a kosár használatához!</p>';
        }
        
    }

?>