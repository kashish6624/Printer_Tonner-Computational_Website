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
    
        $select = "SELECT * FROM tblprintertonnerrefiling WHERE EmailID = '{$email}'" ;
        $result = mysqli_query($conn, $select) ;

        if($result){
            $NumberOfEntries = mysqli_num_rows($result) ;

            if($NumberOfEntries > 0){

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
                    </tr>
            ";

                while($row = mysqli_fetch_assoc($result)){
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