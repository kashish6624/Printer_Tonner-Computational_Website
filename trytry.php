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

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $recordID = $_POST['RecordID'];
    $staffName = $_POST['StaffName'];
    $email = $_POST['EmailID'];
    $designationID = $_POST['DesignationIDOfPersonForWhichRefillingIsDone'];
    $printerID = $_POST['PrinterID'];
    $departmentID = $_POST['DepartmentIDForWhichRefillingIsDone'];
    $approvedDate = $_POST['ApprovedDate'];
    $problems = $_POST['Problems'];
    $quantity = $_POST['Quantity'];

    if (empty($recordID) || empty($staffName) || empty($email) || empty($designationID) || empty($printerID) || empty($departmentID) || empty($approvedDate) || empty($quantity)) {
        echo "Please fill in all required fields.";
    } else {

        $_SESSION['recordID'] = $recordID;
        $_SESSION['staffName'] = $staffName;

        setcookie("email", $email, time() + (86400 * 30), "/");

        header("Location: refills.php");
        exit();
    }
}
?>

<h2>Add Printer Toner Refilling Information</h2>

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
        <a href="./refills-list.php"><b>View List</b></a>
    </p>
</form>
<script>
    document.getElementById('refillingForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevents the default form submission
        
        // Validation
        const recordID = document.getElementById('RecordID').value.trim();
        const staffName = document.getElementById('StaffName').value.trim();
        const email = document.getElementById('EmailID').value.trim();
        const designationID = document.getElementById('DesignationIDOfPersonForWhichRefillingIsDone').value.trim();
        const printerID = document.getElementById('PrinterID').value.trim();
        const departmentID = document.getElementById('DepartmentIDForWhichRefillingIsDone').value.trim();
        const approvedDate = document.getElementById('ApprovedDate').value.trim();
        const problems = document.getElementById('Problems').value.trim();
        const quantity = document.getElementById('Quantity').value.trim();

        // Basic validation for required fields
        if (!recordID || !staffName || !email || !designationID || !printerID || !departmentID || !approvedDate || !quantity) {
            alert("Please fill in all required fields.");
            return;
        }

        // Ask user for confirmation
        const confirmed = window.confirm("Are you sure you want to add this refilling record?");

        if (confirmed) {
            // Form data is valid, continue with submission
            this.submit();
        } else {
            // Optionally, you can provide feedback to the user that the action was cancelled
            console.log("Refilling record addition cancelled.");
        }
    });
</script>

</body>
</html>
