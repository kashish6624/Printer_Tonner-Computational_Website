<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Information Form</title>
    <link rel="stylesheet" type="text/css" href="deptstyle.css">

</head>
<body>
<?php
    session_start(); 
    require("./connection.php");
    require("./navbar.php");

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $departmentID = $_POST["DepartmentID"];
        $departmentName = $_POST["Department"];

        $_SESSION["department"] = array(
            "id" => $departmentID,
            "name" => $departmentName
        );

        setcookie("last_department", $departmentName, time() + (86400 * 30), "/"); 
    }
?>
    <h2>Add Department Information</h2>

    <form id="departmentForm" action="./insert-dept.php" method="POST">
        <label for="DepartmentID">Department ID:</label>
        <input type="text" name="DepartmentID" id="DepartmentID" required><br>

        <label for="Department">Department Name:</label>
        <input type="text" name="Department" id="Department" required><br>

        <input type="submit" value="Add Department" name="Submit-btn">

        <a href="./dept-list.php"><b>Departments List</b></a>
    </form>

    <script>
        document.getElementById('departmentForm').addEventListener('submit', function(event) {
            event.preventDefault(); 
            const confirmed = window.confirm("Are you sure you want to add this department?");
            
            if (confirmed) {
                const formData = new FormData(this);

                const jsonData = {};
                formData.forEach(function(value, key) {
                    jsonData[key] = value;
                });
                
                console.log(jsonData);
            } else {
                console.log("Department addition cancelled.");
            }
        });
    </script>
</body>
</html>
