<?php

error_reporting(0);
require 'Database.php';
session_start();

/* Handle Login */
if ( isset($_GET['user']) and !empty($_GET['user']) ) {

    $forgot = new Database("ltz");
    if( $forgot->check_connection() ) {
        $user = htmlentities($_GET['user']);
        $response = $forgot->forgot_password($user);
        if ( $response[0] ) {
            echo "1,A mail has been sent with recovery link!";
        } else {
            switch($response[1]){
                case 101:
                    echo "0,No Such User!";
                    break;
                case 500:
                    echo "0,Internal Server Error, Please try after sometime!";
                    break;
                case 501:
                    echo "0,Database Error, Please try after sometime!";
                    break;
            }
        }
    }

}

?>