<?php
function connectDB(&$conn)
{

    $serverName = "localhost";
    $userName = "root";
    $dbName = "cinema";
    $password = "123";

    $conn = mysqli_connect($serverName, $userName, $password, $dbName);
    if (mysqli_connect_error()) echo mysqli_connect_error();
    // else echo "Connect Successful";
}
