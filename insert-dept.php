<?php

require("./connection.php") ; 

if(isset($_POST['Submit-btn'])){ 

    extract($_POST) ;

    $insert_into = "INSERT INTO tbldepartments (DepartmentID, Department) VALUES ('{$DepartmentID}', '{$Department}')" ;

    $result = mysqli_query($conn, $insert_into) ;

    if($result){
        echo "Data inserted successfully" ;

        header("location:departments.php?success");

    }else{
        echo "Error" ;
    }
}else {
    header("location:departments.php") ;
}

?>