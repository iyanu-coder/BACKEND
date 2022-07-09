<?php
    include_once("connect_db.php");

    $postdata = file_get_contents("php://input");

    if(isset($postdata) && !empty($postdata)) {
        $request = json_decode($postdata);
        
        $f_name = trim($request->f_name);
        $l_name = trim($request->l_name);
        $email = mysqli_real_escape_string($mysqli, trim($request->email));
        $country = trim($request->country);
        $phone_number = trim($request->phone_number);
        $username = trim($request->username);
        $password = mysqli_real_escape_string($mysqli, trim($request->password));
        // $pasword=md5($_POST['password']);
        // $password_hashed = password_hash($password, PASSWORD_ARGON2ID);
        $hash = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO login_registration(
        f_name, 
        l_name, 
        email, 
        country, 
        phone_number,
        username, 
        password) VALUE (
        '$f_name', 
        '$l_name', 
        '$email', 
        '$country', 
        '$phone_number', 
        '$username',
        '$password')";

        if ($mysqli->query($sql)) {
            $data=array('message'=>'success');
            echo json_encode($data);
        }
        else{
            $data=array('message'=>'failed');
            echo json_encode($data);
        }
     }

?>