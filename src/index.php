<?php require_once 'protected/config.php'; ?>
<?php require_once USER_CONTROLLER; ?>
<?php require_once PRODUCT_CONTROLLER; ?>

<?php session_start(); ?>

<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href = "<?=PUBLIC_DIR.'style.css'; ?>">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
   
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href = "<?=PUBLIC_DIR.'style.css'; ?>">

   <!--- Bootrstrap javascript --->
   <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


</head>
<body>
    <div class = "container">
        <header><?php include_once PROTECTED_DIR.'header.php' ?></header>
        <nav><?php require_once PROTECTED_DIR.'nav.php' ?></nav>
        <content><?php require_once PROTECTED_DIR.'routing.php' ?></content>
        <footer><?php include_once PROTECTED_DIR.'footer.php' ?></footer>
    </div>
    
</body>
</html>