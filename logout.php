<?php

error_reporting(0);
session_start();

if (isset($_SESSION['user_data']['id']) and !empty($_SESSION['user_data']['id'])) {
    require_once 'Database.php';
    $user_id = $_SESSION['user_data']['id'];
    $logoutUser = new Database('ltz');
    if ($logoutUser->check_connection()) {
        $logoutUser->logout($user_id);
        $_SESSION['user_data'] = False;
        session_destroy();
        //chmod('uploads/', 0666);
    }
}
header('Location: index.php');
?>
