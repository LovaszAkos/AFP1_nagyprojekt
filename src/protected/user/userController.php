<?php 
function IsUserLoggedIn() {
	return $_SESSION  != null && array_key_exists('uid', $_SESSION) && is_numeric($_SESSION['uid']);
}

function UserLogout() { 
	session_unset();
	session_destroy();
	header('Location: index.php');
}

?>