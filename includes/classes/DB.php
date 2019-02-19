<?php

$host = '87.239.114.209';
$dbName = 'projektui';
$username = 'remote';
$password = '6wV2Md306bvmBeCO';
$db = new PDO('mysql:host='.$host.';dbname='.$dbName.';charset=utf8', $username, $password);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if (!$db_exists) {
    //create the database
    $db->exec("CREATE TABLE IF NOT EXISTS events (
                        id INTEGER PRIMARY KEY AUTO_INCREMENT,
                        name TEXT,
                        start DATETIME,
                        end DATETIME,
                        resource VARCHAR(30))");

}

?>
