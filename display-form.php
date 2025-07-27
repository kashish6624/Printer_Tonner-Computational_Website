<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="./deptstyle.css">
</head>
<?php
    require("./navbar.php");
?>
<body>
    
    <form action="./get-data.php" method="post">
        <div>
            <label for="">Email</label>
            <input type="text" name="PrinterEmail">
        </div>
        <button type="submit" name="submit-btn">Get Data</button>
    </form>

</body>
</html>