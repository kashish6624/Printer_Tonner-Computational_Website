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

    if(isset($_GET['id'])){

        $id = $_GET['id'] ;

        $delete = "DELETE FROM tblprinters WHERE PrinterID = {$id}" ;
        $result = mysqli_query($conn , $delete) ;

        if($result){
            echo "Data deleted successfully " ;
            header("location: printer-list.php?deleted") ;
        }

    }

?>
</body>
</html>