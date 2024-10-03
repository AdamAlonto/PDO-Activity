<?php
require 'dbconfig.php';

// this will fetch all records from the Customer table
$sql = "SELECT * FROM Customer";
$stmt = $pdo->query($sql);
$customers = $stmt->fetchAll(PDO::FETCH_ASSOC);

// to start HTML table
echo "<table border='1'>";
echo "<tr><th>CustomerID</th><th>FullName</th><th>ContactNumber</th><th>Email</th></tr>";

// this will loop through the result set and display each record in the table
foreach ($customers as $customer) {
    echo "<tr>";
    echo "<td>" . htmlspecialchars($customer['CustomerID']) . "</td>";
    echo "<td>" . htmlspecialchars($customer['FullName']) . "</td>";
    echo "<td>" . htmlspecialchars($customer['ContactNumber']) . "</td>";
    echo "<td>" . htmlspecialchars($customer['Email']) . "</td>";
    echo "</tr>";
}

echo "</table>";
?>
