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

    $select = "SELECT * FROM tblprinters" ;
    $result = mysqli_query($conn, $select) ;
    
    if(isset($_GET['deleted'])){
        echo "Data deleted successfully" ;
    }

    echo "<table border='1' width='1000' align='center' cellpadding='8'>
        <tbody>
            <tr>
                <th>PrinterID</th>
                <th>PrinterName</th>
                <th>InCustodyOf</th>
                <th>EmailOfCustodian</th>
                <th>IsFaulty</th>
                <th>IsActive</th>
                <th>Action</th>
            </tr>
    ";

    while($row = mysqli_fetch_assoc($result)) {
        
        echo "<tr>
                    <td>{$row['PrinterID']}</td>
                    <td>{$row['PrinterName']}</td>
                    <td>{$row['InCustodyOf']}</td>
                    <td>{$row['EmailOfCustodian']}</td>
                    <td>{$row['IsFaulty']}</td>
                    <td>{$row['IsActive']}</td>
                    <td> <button class='delete-btn' data-kevin='http://localhost/webtech/php/delete.php?id={$row['PrinterID']}'>Delete</button> </td>
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