<?php

require("./connection.php") ; 

if(isset($_POST['submit'])){ // checks if the user has clicked the submit btn or not

    extract($_POST) ;

    $insert = "INSERT INTO tbldesignations (DesignationID, Designation) VALUES ('{$DesignationID}', '{$Designation}')" ;

    $Dept = mysqli_query($conn, $insert) ;

    if($Dept){
        echo "Data inserted successfully" ;

        header("location:designations.php?success");

    }else{
        echo "Error" ;
    }
}
else {
    header("location:designations.php") ;
}
?>