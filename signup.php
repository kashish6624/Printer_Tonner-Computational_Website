<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up Form</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php
session_start();
require("./connection.php");
require("./navbar.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["EmailID"];
    $name = $_POST["StaffName"];
    $designationId = $_POST["designationId"];
    $departmentId = $_POST["departmentId"];
    $gender = $_POST["gender"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $isAdmin = isset($_POST["isAdmin"]) ? $_POST["isAdmin"] : "No";

    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    $query = "INSERT INTO tblstaff (EmailID, StaffName, designationID, departmentID, gender, username, password, isAdmin) 
              VALUES ('$email', '$name', '$designationId', '$departmentId', '$gender', '$username', '$hashedPassword', '$isAdmin')";
    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "Record inserted successfully.";
    } else {
        echo "Error: " . mysqli_error($conn);
    }
    
}
?>

<div class="container">
    <div class="signup-form">
        <h2>Sign Up</h2>
        <form action="#" method="post">

            <label for="EmailID">EmailID:</label>
            <input type="text" name="EmailID"><br>

            <label for="StaffName">Name</label>
            <input type="text" id="name" name="StaffName" placeholder="name.." required>
             
            <label for="designationId">Designation ID</label>
            <input type="text" id="designationId" name="designationId" 
            placeholder="Your Id.." required><label for="username"></label>
            
            <label for="departmentId">Department ID</label>
            <input type="text" id="departmentId" name="departmentId" placeholder="Your Department Id.." required>
            
            <label for="gender">Gender</label>
            <input type="radio" id="gender" name="gender"  required>Male
            <input type="radio" id="gender" name="gender"  required>Female
            <input type="radio" id="gender" name="gender"  required>Other

            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Your username.." required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Your password.." required>
            
            <label for="isAdmin">Admin</label>
            <input type="radio" id="isAdmin" name="isAdmin"  required>Yes
            <input type="radio" id="isAdmin" name="isAdmin"  required>No 

            <input type="submit" value="Sign Up">
        </form>
        <div class="login-link">
            <p>Already have an account? <a href="login.php">Login here</a></p>
        </div>
    </div>
</div>

</body>
</html>
