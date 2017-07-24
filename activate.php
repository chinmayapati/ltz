<?php

/*
 cna - create new account
 rp - recover password
*/
session_start();

if (isset($_GET['meth']) and isset($_GET['ui']) and isset($_GET['ato']) and !empty($_GET['meth']) and !empty($_GET['ui']) and !empty($_GET['ato']) ) {
    require_once 'Database.php';
    $userid = htmlentities($_GET['ui']);
    $token = htmlentities($_GET['ato']);
    $sql = "SELECT email FROM `users` WHERE id=$userid AND auth_token='$token';";
    $conn = new Database('creative_soul');

    $response = new Database("ltz");
    switch ($_GET['meth']) {
        case 'cna':
            $activate = $response->activate($userid, $token);
            if ($activate[0]) {
                header("Location: index.php");
            } else {
                switch ($activate[1]) {
                    case 104:
                        echo "Invalid Link! Contact system admin for more info.";
                        break;
                    case 501:
                        echo "Database Error! Please try after sometime.";
                        break;
                    default:
                        echo "Internal Server Error! Please try after sometime.";
                }
            }
            break;
        case 'rp':
            $recover = $response->query("SELECT username FROM `users` WHERE id=$userid AND token='$token';");
            if ($recover and mysqli_num_rows($recover) == 1) {
                $user = mysqli_fetch_row($recover)[0];
                if ($response->is_user($user)) {
                    echo "<form method='post' action='activate.php?meth=rp&ui=$userid&ato=$token'>";
                    echo "New Password : <input type='password' name='new_pass' required><br />";
                    echo "Confirm New Password : <input type='password' name='cnf_pass' required><br />";
                    echo "<input type='submit' value='Change Password'></form>";
                } else {
                    echo "Sorry! Unable to verify you. Contact system admin for more information.";
                }
            }
            break;
        default:
            echo "Invalid Method! Please contact system admin for more information.";
    }
}

if (isset($_POST['new_pass']) and !empty($_POST['new_pass']) and isset($_POST['cnf_pass']) and !empty($_POST['cnf_pass']) and isset($_GET['ui']) and !empty($_GET['ui'])) {
    $pass = new Database('ltz');
    $user = htmlentities($_GET['ui']);
    $new = htmlentities($_POST['new_pass']);
    $cnf = htmlentities($_POST['cnf_pass']);
    $result = $pass->changePassword($user, $new, $cnf);
    if( $result[0] ){
        echo "<script>document.write('Password changed successfully. Redirecting to login page..');</script>";
        header("Refresh: 1,url=index.php");
    } else {
        switch($result[1]) {
            case 105:
                echo "New and Confirm Password don't match!";
                break;
            case 500:
                echo "Internal Server Error! Please try after sometime.";
                break;
            default:
                echo "Script Error! Contact system admin for more information.";
        }
    }
}

?>