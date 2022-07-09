<?php

 include_once("connect_db.php");

 $adminevents = file_get_contents("php://input");

 if (isset($adminevents) && !empty($adminevents)) {
    $request = json_decode($adminevents);

    $contents = trim($request->contents);
    $venue = trim($request->venue);
    $entryfee = trim($request->entryfee);
   
    $sql = "INSERT INTO hotelevents_tb(
        contents,
        venue,
        entryfee,
        ) VALUE (
        '$contents',
        '$venue',
        '$entryfee',";

    if ($mysqli->query($sql)) {
        $data=array('message'=>'success');
        echo json_encode($data);
    }
    else{
        $data=array('message'=>'success');
        echo json_encode($data);
    }
}


?>