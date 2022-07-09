<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE");
header("Access-Control-Allow-Headers: origin, X-Requested-With, Content-Type, Accept");
header("Control-Type: application/json; charset=UTF-8");

    $db_host = 'localhost';
    $db_username = 'root';
    $db_password = '';
    $db_name = 'hoteldb';
    $mysqli = new mysqli($db_host, $db_username, $db_password, $db_name);

    if ($mysqli->connect_error) {
        die('Error : ('. $mysqli->connect_errno .')'. $mysqli->connect_error);
    }

?>