<?php 
//RETRIEVE THE DATA FROM THE DATABASE TABLE
//BUT WE FIRST NEED TO CONNECT TO DATABASE

//connect to db
//data source name
$dsn ="mysql:host=localhost;dbname=final_1531";
$un ="root";
$pw ="";


//PDO stands for PHP data object
//it has three parameters :1.datasource 2.username 3.password
try {
    $pdo = new PDO($dsn, $un, $pw);
} catch (PDOException $err) {
    $connectionError =$err->getMessage();
}
?>
