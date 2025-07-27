<?php

require("./connection.php");

$sql = "SELECT * FROM tblprintertonnerrefiling";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "Printer ID: " . $row["PrinterID"] . "<br>";
        echo "Staff Name: " . $row["StaffName"] . "<br>";
        echo "Email ID: " . $row["EmailID"] . "<br><br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>