<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "progettomuseoDB";

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$filename = $_POST['percorso'];
$id = $_POST['id_vespa']; 

$query_insert = "   INSERT INTO audio (FileName, id_vespa) 
                    VALUES ('$filename', '$id')";

if (mysqli_query($conn, $query_insert)) {
    header("location: audio.php");
    exit();
} else {
    echo "Errore nell'inserimento: " . mysqli_error($conn);
}


mysqli_close($conn);


?>