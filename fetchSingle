<?php
require 'dbconfig.php'; 

// fetch a single customer record from the customer table
$sql = "SELECT * FROM Customer WHERE CustomerID = 2"; // <-- change this for dif. answer
$stmt = $pdo->query($sql);

// to fetch the single result
$customer = $stmt->fetch(PDO::FETCH_ASSOC);

// Display the result in a readable format using <pre> and print_r()
echo "<pre>";
print_r($customer);
echo "</pre>";

if ($customer) {
} else {
    echo "No customer found with the specified ID.";
}
?>
