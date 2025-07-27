<?php
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "printerstonner";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch printer data
$sql = "SELECT * FROM tblprinters";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "Printer Name: " . $row["PrinterName"] . "<br>";
        echo "Custodian: " . $row["InCustodyOf"] . "<br>";
        echo "Email of Custodian: " . $row["EmailOfCustodian"] . "<br><br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>
