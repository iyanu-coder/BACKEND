<?php

include_once("connect_db.php");

$roomsdata = file_get_contents("php://input");

if (isset($roomsdata) && !empty($roomsdata)) {
    $request = json_decode($roomsdata);

    $contentsofroom = trim($request->contentsofroom);
    $priceofroom = trim($request->priceofroom);
    $typeofroom = trim($request->typeofroom);
    $sizeofroom = trim($request->sizeofroom);

    $sql = "INSERT INTO listofrooms_tb(
        contentsofroom,
        priceofroom,
        typeofroom,
        sizeofroom
        ) VALUE (
        '$contentsofroom',
        '$priceofroom',
        '$typeofroom',
        '$sizeofroom')";

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