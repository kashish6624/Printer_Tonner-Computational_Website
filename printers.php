<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Printer Information Form</title>
    <link rel="stylesheet" type="text/css" href="deptstyle.css">
</head>
<body>
<?php
    session_start();

    require("./connection.php");
    require("./navbar.php");

    if(isset($_SESSION['user_id'])){
        header("Location: index.php");
        exit;
    }
?>
<h2>Add Printer Information</h2>
<?php

        if(isset($_GET['success'])) {
            // echo "Data inserted successfully" ;
            echo "<script> alert('Data inserted successfully') </script>" ;
        }

?>
<form action="./insert.php" method="POST">
    <label for="PrinterID">Printer ID:</label>
    <input type="text" name="PrinterID" required><br>

    <label for="PrinterName">Printer Name:</label>
    <input type="text" name="PrinterName" required><br>

    <label for="InCustodyOf">In Custody Of:</label>
    <input type="text" name="InCustodyOf" required><br>

    <label for="EmailOfCustodian">Email of Custodian:</label>
    <input type="text" name="EmailOfCustodian"><br>

    <label for="IsFaulty">Is Faulty:</label>
    <input type="checkbox" name="IsFaulty" value="1"><br>

    <label for="IsActive">Is Active:</label>
    <input type="checkbox" name="IsActive" value="1" checked><br>

    <input type="submit" name="SubmitBtn" value="Add Printer">

    <p>
        <a href="./display-form.php"><b>Dislay My Recoreds</b></a>
    </p>

    <p>
        <a href="./printer-list.php"><b>View list</b></a>
    </p>
</form>

<script>
    document.getElementById('printerForm').addEventListener('submit', function(event) {
        event.preventDefault(); 

        const printerID = document.getElementById('PrinterID').value.trim();
        const printerName = document.getElementById('PrinterName').value.trim();
        const inCustodyOf = document.getElementById('InCustodyOf').value.trim();

        if (!printerID || !printerName || !inCustodyOf) {
            alert("Please fill in all required fields.");
            return;
        }
        const confirmed = confirm("Are you sure you want to add this printer?");

        if (confirmed) {
            this.submit(); 
        } else {
            console.log("Printer addition cancelled.");
        }
    });
</script>
<?php
    $last_printer = "printer_form_visited";
    $printer = "yes";
    setcookie($last_printer, $printer, time() + (86400 * 30), "/"); 
?>

</body>
</html>
