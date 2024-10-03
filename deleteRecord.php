<?php
require 'dbconfig.php';

// to prepare sql statement for deletion
$sql = "DELETE FROM Customer WHERE CustomerID = :customerid";
$stmt = $pdo->prepare($sql);

// bind the parameter for the customer to delete
$customerid = 1; // <- this will delete the customer with ID 1

// this will execute the deletion
$stmt->execute([':customerid' => $customerid]);

echo "Customer record deleted successfully!";
?>
