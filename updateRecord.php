<?php
require 'dbconfig.php'; 

$sql = "UPDATE Customer SET FullName = :fullname, ContactNumber = :contact WHERE CustomerID = :customerid";
$stmt = $pdo->prepare($sql);

// Bind parameters for updating
$fullname = 'Michael Jordan Updated';
$contact = '999-888-7777';
$customerid = 2; // this will change the customer carrying the ID 2

// this will execute the update
$stmt->execute([
    ':fullname' => $fullname,
    ':contact' => $contact,
    ':customerid' => $customerid
]);

echo "Customer record updated successfully!";
?>
