<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
<link rel="stylesheet" type="text/css" href="loginstyle.css">
</head>
<body>
<?php
session_start();
require("./connection.php");
require("./navbar.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["Password"];

    $stmt = $conn->prepare("SELECT * FROM tblstaff WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['Password'])) {
            $_SESSION["loggedin"] = true;
            setcookie("username", $username, time() + (86400 * 30), "/");
            header("Location: index.php");
            exit;
        } else {
            echo "<p style='color: red;'>Incorrect password.</p>";
        }
    } else {
        echo "<p style='color: red;'>Account doesn't exist. Please sign up first.</p>";
    }
}

// Function to hash the password
function hashPassword($password) {
    return password_hash($password, PASSWORD_DEFAULT);
}
?>

<div class="container">
    <div class="login-form">
        <h2>Login</h2>
        <form action="#" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Your username.." required>

            <label for="password">Password</label>
            <input type="password" id="password" name="Password" placeholder="Your password.." required>

            <input type="submit" value="Login">
        </form>

        <div class="register-link">
            <p>Don't have an account? <a href="signup.html">Register here</a></p>
            <a href="./display.php"><b>Display Staff Records</b></a>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        if (username === "" || password === "") {
            alert("Please fill out all fields");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
