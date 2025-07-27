<?php

require("./connection.php") ; 

if(isset($_POST['Sbmbtn'])){ // checks if the user has clicked the submit btn or not

    extract($_POST) ;

    $insert_refill = "INSERT INTO tblprintertonnerrefiling (RecordID, StaffName, EmailID, DesignationIDForWhomRefillingIsDone,PrinterID, DepartmentIDForWhomRefillingIsDone, ApprovedDate, Problems, Quantity) VALUES ('{$RecordID}', '{$StaffName}', '{$EmailID}', '{$DesignationIDOfPersonForWhichRefillingIsDone}', '{$PrinterID}', '{$DepartmentIDForWhichRefillingIsDone}','{$ApprovedDate}','{$Problems}','{$ValidityMonths}')" ;

    $refill = mysqli_query($conn, $insert_refill) ;

    if($refill){
        echo "Data inserted successfully" ;

        header("location:refills.php?success");

    }else{
        echo "Error" ;
    }
}
else {
    header("location:refills.php") ;
}
?>