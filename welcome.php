<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    include 'menu.php';
    require_once  'database.php';


    $db= new database();
    $result = $db->select("SELECT * from medewerker WHERE medewerkernaam = :uname", ['uname'=>'Tom']);
    // print_r($result);
    ?>
    
</body>
</html>