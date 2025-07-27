<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Printer Toner Refilling Information Form</title>
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
    $email = "EmailID";
    setcookie("email", $email, time() + (86400 * 30), "/");
?>

<h2>Add Printer Toner Refilling Information</h2>

<?php
        if(isset($_GET['success'])) {
            // echo "Data inserted successfully" ;
            echo "<script> alert('Data inserted successfully') </script>" ;
        }
?>

<form id="refillingform" action="./insert-refills.php" method="POST">
    <label for="RecordID">Record ID:</label>
    <input type="number" name="RecordID" required min="1"><br>

    <label for="StaffName">Staff Name:</label>
    <input type="text" name="StaffName"><br>

    <label for="EmailID">Email ID:</label>
    <input type="email" name="EmailID"><br>

    <label for="DesignationIDOfPersonForWhichRefillingIsDone">Designation ID:</label>
    <input type="text" name="DesignationIDOfPersonForWhichRefillingIsDone"><br>

    <label for="PrinterID">Printer ID:</label>
    <input type="text" name="PrinterID"><br>

    <label for="DepartmentIDForWhichRefillingIsDone">Department ID:</label>
    <input type="text" name="DepartmentIDForWhichRefillingIsDone"><br>

    <label for="ApprovedDate">Approved Date:</label>
    <input type="date" name="ApprovedDate"><br>

    <label for="Problems">Problems:</label>
    <input type="text" name="Problems"><br>

    <label for="Qunatity">Qunatity:</label>
    <input type="number" name="ValidityMonths" value=" " required min="1"><br>

    <input type="submit" name="Sbmbtn" value="Add Refilling Record">

    <p>
        <a href="./displayrefill.php"><b>My Records</b></a>
    </p>

    <p>
        <a href="./refills-list.php"><b>View List</b></a>
    </p>
</form>
<script>
    document.getElementById('refillingForm').addEventListener('submit', function(event) {
        event.preventDefault();
        const recordID = document.getElementById('RecordID').value.trim();
        const staffName = document.getElementById('StaffName').value.trim();
        const email = document.getElementById('EmailID').value.trim();
        const designationID = document.getElementById('DesignationIDOfPersonForWhichRefillingIsDone').value.trim();
        const printerID = document.getElementById('PrinterID').value.trim();
        const departmentID = document.getElementById('DepartmentIDForWhichRefillingIsDone').value.trim();
        const approvedDate = document.getElementById('ApprovedDate').value.trim();
        const problems = document.getElementById('Problems').value.trim();
        const quantity = document.getElementById('Quantity').value.trim();

        if (!recordID || !staffName || !email || !designationID || !printerID || !departmentID || !approvedDate || !quantity) {
            alert("Please fill in all required fields.");
            return;
        }
        const confirmed = window.confirm("Are you sure you want to add this refilling record?");
        
        if (confirmed) {
            this.submit();
        } else {
            console.log("Refilling record addition cancelled.");
        }
    });
</script>
</body>
</html>
