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

    if(isset($_POST['submit-btn'])){

        $email = $_POST['PrinterEmail'] ;
    
        $select = "SELECT * FROM tblprinters WHERE EmailOfCustodian = '{$email}'" ;
        $result = mysqli_query($conn, $select) ;

        if($result){
            $NumberOfEntries = mysqli_num_rows($result) ;

            if($NumberOfEntries > 0){

                echo "<table border='1' width='1000' align='center' cellpadding='8'>
                <tbody>
                    <tr>
                        <th>PrinterID</th>
                        <th>PrinterName</th>
                        <th>InCustodyOf</th>
                        <th>EmailOfCustodian</th>
                        <th>IsFaulty</th>
                        <th>IsActive</th>
                        </tr>
            ";

                while($row = mysqli_fetch_assoc($result)){
                   echo "<tr>
                    <td>{$row['PrinterID']}</td>
                    <td>{$row['PrinterName']}</td>
                    <td>{$row['InCustodyOf']}</td>
                    <td>{$row['EmailOfCustodian']}</td>
                    <td>{$row['IsFaulty']}</td>
                    <td>{$row['IsActive']}</td>
                    </tr>" ; // parameter passed in url to control the data dynamically

                }               
    echo "</tbody>
    </table>" ;
            }else{
                echo "Email Not Found" ;
            }
        }
    }else{
        echo "You need click on the btn" ;
    }

?>  
</body>
</html>