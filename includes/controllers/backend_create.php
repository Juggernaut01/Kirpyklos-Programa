<?php

 require_once('../classes/DB.php');

$insert = "INSERT INTO events (name, start, end) VALUES (:name, :start, :end)";

$stmt = $db->prepare($insert);

$stmt->bindParam(':start', $_POST['start']);
$stmt->bindParam(':end', $_POST['end']);
$stmt->bindParam(':name', $_POST['name']);

$stmt->execute();
$id = $db->lastInsertId();


if (!empty($_POST["client_name"]) && !empty($_POST["tel"])) {
$stmt->execute();
}
if(!empty($_POST['email']) && !empty($_POST["name"]) && !empty($_POST["tel_nr"]) ){

$code = substr($_POST['name'], 0, 3) . substr($_POST['tel_nr'], 0, 3) ;
$insert2 = "INSERT IGNORE INTO clients (name, tel_nr, email, code, visit_id) VALUES (:name, :tel_nr, :email, :code, :id)";

$stmt2 = $db->prepare($insert2);

$stmt2->bindParam(':name', $_POST['name']);
$stmt2->bindParam(':tel_nr', $_POST['tel_nr']);
$stmt2->bindParam(':email', $_POST['email']);
$stmt2->bindParam(':code', $code);
 $stmt2->bindParam(':id', $id);


$stmt2->execute();





}







class Result {}

$response = new Result();
$response->result = 'OK';
$response->message = 'Created with id: '.$db->lastInsertId();

header('Content-Type: application/json');
echo json_encode($response);

?>
