 <?php

require("./connection.php") ; 

if(isset($_POST['SubmitBtn'])){ 

    extract($_POST) ;

    $IsFaulty = (isset($_POST['IsFaulty'])) ? 1 : 0 ;
    $IsActive = (isset($_POST['IsActive'])) ? 1 : 0 ;

    $insert_into = "INSERT INTO tblprinters (PrinterID, PrinterName, InCustodyOf, EmailOfCustodian, IsFaulty, IsActive) VALUES ('{$PrinterID}', '{$PrinterName}', '{$InCustodyOf}', '{$EmailOfCustodian}', '{$IsFaulty}', '{$IsActive}')" ;

    $result = mysqli_query($conn, $insert_into) ;

    if($result){
        echo "Data inserted successfully" ;

        header("location:printers.php?success");

    }else{
        echo "Error" ;
    }
}else {
    header("location:printers.php") ;
}

?>
