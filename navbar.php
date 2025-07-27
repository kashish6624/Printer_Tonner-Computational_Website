<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    
    <link rel="stylesheet" type="text/css" href="./aboutstyle.css"> 
</head>
<body>
    <?php
        require('./connection.php');
        echo '<nav>';
        echo '<a href="index.php">Home</a>' ;
        echo '<a href="about.php">About</a>' ;
        echo '<a href="departments.php">Departments</a>';
        echo '<a href="printers.php">Printers</a>';
        echo '<a href="refills.php">Refills</a>';
        echo '<a href="designations.php">Designations</a>';
        echo '<a href="login.php">Login</a>';
        echo '<a href="signup.php">Sign up</a>';
        echo '<a href="validitymonths.php">Validity of Printers</a>';
        echo '<a href="contact.php">Contact</a>';
        echo '<a href="delete-record.php">Delete Record</a>';
        echo '</nav>';
    ?>

</body>
</html>