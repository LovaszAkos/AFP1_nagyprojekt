<?php 
function IsUserLoggedIn() {
	return $_SESSION  != null && array_key_exists('uid', $_SESSION) && is_numeric($_SESSION['uid']);
}



?>