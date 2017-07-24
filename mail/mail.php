<?php

ini_set('track_errors', 1);
require_once 'phpmailer/class.phpmailer.php';
require_once 'phpmailer/class.smtp.php';

function send_mail($type, $emailTo, $subject, $msg)
{
    $mail = new PHPMailer;
    $mail->SMTPDebug = 0;
    $mail->isSMTP();
    $mail->Host = 'mx1.hostinger.in';
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = 'ssl';
    $mail->Port = 465;

    $username = $password = $replyTo = "";
    switch($type){
        case "activation":
            $username = "no-reply@feedabyte.com";
            $password = "Feed@byte#20";
            break;
        case "otp":
            $username = "otp@feedabyte.com";
            $password = "Feed@byte#20";
    }

    $mail->Username = $username;
    $mail->Password = $password;

    $mail->setFrom($username , "Creative Souls");
    $mail->addAddress($emailTo);
    if( !empty($replyTo) ) $mail->addReplyTo($replyTo, "Creative Souls");

    $mail->isHTML(true);

    $mail->Subject = $subject;
    $mail->Body = $msg;

    if ( !$mail->send() ) return false;
    else return true;
}

?>