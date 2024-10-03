<?php
require 'dbconfig.php'; 

$sql = "INSERT INTO Customer (CustomerID, FullName, ContactNumber, Email) VALUES (:customerId, :fullname, :contact, :email)";
$stmt = $pdo->prepare($sql);

// Use a unique CustomerID
$customerId = 6;  // <-change this to the next available ID
$fullname = 'Johnny Sin';  
$contact = '777-555-333'; 
$email = 'johnnysin@example.com'; 

try {
    $stmt->execute([
        ':customerId' => $customerId,
        ':fullname' => $fullname,
        ':contact' => $contact,
        ':email' => $email
    ]);
    echo "New customer added successfully!";

    // redirect to the same page to avoid duplicate insertions
    header("Location: 5insertRecord.php"); 
    exit(); // to make sure to call exit after header to stop further execution
} catch (PDOException $e) {
    // catch any exceptions or errors that occur during execution
    echo "Error: " . $e->getMessage();
}
?>
