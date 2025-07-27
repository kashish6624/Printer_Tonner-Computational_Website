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

$select = "SELECT * FROM tbldepartments" ;
$result = mysqli_query($conn, $select) ;

if(isset($_GET['deleted'])){
    echo "Data deleted successfully" ;
}
echo "<table border='1' width='1000' align='center' cellpadding='8'>
    <tbody>
        <tr>
            <th>DepartmentID</th>
            <th>Department</th>
        </tr>
";
while($row = mysqli_fetch_assoc($result)) {
    echo "<tr>
                <td>{$row['DepartmentID']}</td>
                <td>{$row['Department']}</td>
                <tr>";
}echo "</tbody>
    </table>" ;
?>
</body>
</html>