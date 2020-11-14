<?php require_once 'protected/config.php'; ?>

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