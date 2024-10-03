<?php
require 'dbconfig.php'; 

// fetch all records from the customer table
$sql = "SELECT * FROM Customer";
$stmt = $pdo->query($sql); // $pdo should be a valid PDO object from dbconfig.php

// this code is to fetch all results
$customers = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo "<pre>";
print_r($customers);
echo "</pre>";
?>
