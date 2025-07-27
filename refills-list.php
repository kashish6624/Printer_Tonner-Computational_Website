<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php

require("./connection.php") ;
require("./navbar.php");

$select = "SELECT * FROM tblprintertonnerrefiling" ;
$result = mysqli_query($conn, $select) ;

if(isset($_GET['deleted'])){
    echo "Data deleted successfully" ;
}

echo "<table border='1' width='1000' align='center' cellpadding='8'>
    <tbody>
        <tr>
            <th>RecordID</th>
            <th>StaffName</th>
            <th>EmailID</th>
            <th>DesignationIDForWhomRefillingIsDone</th>
            <th>PrinterID</th>
            <th>DepartmentIDForWhomRefillingIsDone</th>
            <th>ApprovedDate</th>
            <th>Problems</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
";

while($row = mysqli_fetch_assoc($result)) {
    
    echo "<tr>
                <td>{$row['RecordID']}</td>
                <td>{$row['StaffName']}</td>
                <td>{$row['EmailID']}</td>
                <td>{$row['DesignationIDForWhomRefillingIsDone']}</td>
                <td>{$row['PrinterID']}</td>
                <td>{$row['DepartmentIDForWhomRefillingIsDone']}</td>
                <td>{$row['ApprovedDate']}</td>
                <td>{$row['Problems']}</td>
                <td>{$row['Quantity']}</td>
                <td> <button class='delete-btn' data-kevin='http://localhost/webtech/php/delete-refills.php?id={$row['RecordID']}'>Delete</button> </td>
        </tr>" ;
} 
echo "</tbody>
    </table>" ;
?>

<script>
const deleteBtns = document.querySelectorAll(".delete-btn") ;

deleteBtns.forEach( function (val) {
    // console.log(val);
    val.addEventListener("click" , function (eventObj) {
      const pageLink = eventObj.target.getAttribute("data-kevin")

      let userAnswer = confirm("Are you sure you want to delete this?")

      if(userAnswer){
        window.location.href=pageLink ;
      }

    })
} ) ;

</script>
</body>
</html>