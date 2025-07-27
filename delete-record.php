<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Record</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php
session_start();
require("./connection.php");
require("./navbar.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["EmailID"];

    $query = "DELETE FROM tblstaff WHERE EmailID = '$email'";
    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "<script>alert('Record deleted successfully.');</script>";
    } else {
        echo "<script>alert('Error: " . mysqli_error($conn) . "');</script>";
    }
    
}
?>
<div class="container">
    <div class="signup-form">
        <h2>Delete Record</h2>
        <form action="#" method="post" onsubmit="return confirmDelete()">
            <label for="EmailID">EmailID:</label>
            <input type="text" name="EmailID" required><br>
            <input type="submit" value="Delete Record">
        </form>
    </div>
</div>

<script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this record?");
    }
</script>

</body>
</html>
