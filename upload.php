<?php

 function getip() {
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if (isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }	

if(!empty($_FILES)){

	// database configuration
	$dbHost = 'localhost';
	$dbUsername = 'root';
	$dbPassword = 'toor';
	$dbName = 'ltz';
	//connect with the database
	$conn = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);
	if($conn->connect_errno){
		echo "Failed to connect to MySQL: (" . $conn->connect_errno . ") " . $conn->connect_error;
	}
	
	$ip = getip();	
	$targetDir = "/var/www/html/Projects/ltz/uploads/";
	$fileName = $_FILES['file']['name'];
	$targetFile = $targetDir.$fileName;
	if( move_uploaded_file($_FILES['file']['tmp_name'] , $targetFile )){
		// insert file information into db table
		$conn->query("INSERT INTO `files` (file_name, ip) VALUES('$fileName', '$ip');");
	}
	$conn->close();
}
?>
