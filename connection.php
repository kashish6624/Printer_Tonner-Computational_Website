<?php

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$database = "printerstonners";


$conn = mysqli_connect($servername, $username, $password, $database) or die("Connection error") ;