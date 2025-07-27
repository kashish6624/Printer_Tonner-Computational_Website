<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validity Months Information Form</title>
    <link rel="stylesheet" type="text/css" href="deptstyle.css">
    
</head>
<body>
<?php
    session_start(); 
    require("./connection.php");
    require("./navbar.php");

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $departmentID = $_POST["DepartmentID"];
        $validityMonths = $_POST["ValidityMonths"];

        $_SESSION["validity_success"] = true;
        
        setcookie("last_department_id", $departmentID, time() + (86400 * 30), "/"); 

        header("Location: success.php");
        exit; 
    }
?>
<h2>Add Validity Months Information</h2>

<form action="#" method="POST">
    <label for="DepartmentID">Department ID:</label>
    <input type="text" name="DepartmentID" required><br>

    <label for="ValidityMonths">Validity Months (between 1 and 6):</label>
    <input type="number" name="ValidityMonths" value="6" required min="1" max="6"><br>

    <input type="submit" value="Set Validity Months">

    <a href="./validity-list.php"><b>Validity Months</b></a>

</form>
<script>
    document.getElementById('validityForm').addEventListener('submit', function(event) {
        event.preventDefault(); 

        const departmentID = document.querySelector('input[name="DepartmentID"]').value.trim();
        const validityMonths = parseInt(document.querySelector('input[name="ValidityMonths"]').value.trim(), 10);

        if (!departmentID || isNaN(validityMonths) || validityMonths < 1 || validityMonths > 6) {
            alert("Please enter a valid department ID and validity months between 1 and 6.");
            return;
        }

        const confirmed = confirm("Are you sure you want to set the validity months for this department?");

        if (confirmed) {
            this.submit();
        } else {
            console.log("Validity months setting cancelled.");
        }
    });
</script>
</body>
</html>
