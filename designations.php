<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Designation Information Form</title>
    <link rel="stylesheet" type="text/css" href="deptstyle.css">

</head>
<body>
<?php
    session_start(); 
    require("./connection.php");
    require("./navbar.php");

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $designationID = $_POST["DesignationID"];
        $designationName = $_POST["Designation"];

        $_SESSION["designation"] = array(
            "id" => $designationID,
            "name" => $designationName
        );

        setcookie("last_designation", $designationName, time() + (86400 * 30), "/"); 
    }
?>

<h2>Add Designation Information</h2>

<form id="designationForm" action="#" method="POST">
    <label for="DesignationID">Designation ID:</label>
    <input type="text" name="DesignationID" required><br>

    <label for="Designation">Designation Name:</label>
    <input type="text" name="Designation" required><br>

    <input type="submit" value="Add Designation" name="submit">
    <a href="./desig-list.php"><b>Designation List</b></a>
</form>
<script>
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('designationForm').addEventListener('submit', function(event) {
                event.preventDefault(); 
                const designationID = document.querySelector('input[name="DesignationID"]').value.trim();
                const designationName = document.querySelector('input[name="Designation"]').value.trim();
                console.log("Designation ID:", designationID);
                console.log("Designation Name:", designationName);

                if (!designationID || !designationName) {
                    alert("Please fill in all required fields.");
                    return;
                }
                const confirmed = confirm("Are you sure you want to add this designation?");

                if (confirmed) {
                    this.submit();
                } else {
                    console.log("Designation addition cancelled.");
                }
            });
        });
</script>
</body>
</html>

