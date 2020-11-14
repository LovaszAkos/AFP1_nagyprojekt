<?php 
  if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['login'])) {
      $postData = [
          'email' => $_POST['email'],
          'password' => $_POST['password']
      ];

      if(empty($postData['email']) || empty($postData['password'])) {
          echo "hiányzó adatok";
      }
      else if (!filter_var($postData['email'], FILTER_VALIDATE_EMAIL)) {
          echo "hibás email";
      }
      else if(!userLogin($postData['email'], $postData['password'])) {
          echo "hibás email vagy jelszó";
      }
  }
?>