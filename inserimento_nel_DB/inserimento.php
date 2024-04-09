<?php
$host = "localhost";
$user = "root";
$password = "";
$database = "progettomuseoDB";

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$nome = $_POST['nomeVespa'];
$cilindrata = $_POST['cilindrataVespa']; 
$artista = $_POST['artistaVespa'];  
$anno = $_POST['annoVespa'];  
$descrizione = $_POST['descrizioneVespa']; 

$query_insert = "   INSERT INTO vespa (Nome, Cilindrata, Artista, Anno) 
                    VALUES ('$nome', '$cilindrata', '$artista', '$anno')";

if (mysqli_query($conn, $query_insert)) {
    header("location: inserimento.html");
    exit();
} else {
    echo "Errore nell'inserimento: " . mysqli_error($conn);
}


mysqli_close($conn);


?>
