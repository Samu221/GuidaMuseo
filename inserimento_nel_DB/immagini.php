<!DOCTYPE html>
<html lang="en">
<head>
  <title>immagini</title>
</head>
<body>
    <form action="inserimento_immagini.php" method="post">
        <p>percorso immagine:</p>
        <input type="text" id="percorso" name="percorso" placeholder="filename" >
        <p>vespa</p>
        <select type="number" id="id_vespa" name="id_vespa" required>
            <option value="">Seleziona una vespa</option>
            <?php
            // Connessione al database
            $conn = new mysqli('localhost', 'root', '', 'progettomuseoDB');
            if ($conn->connect_error) {
              die("Connection failed: " . $conn->connect_error);
            }
          
            // Query di selezione per ottenere i nomi delle vespe
            $sql = "SELECT ID_vespa, Nome FROM vespa";
            $result = $conn->query($sql);
          
            // Generazione dinamica delle opzioni del select tag
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo "<option >" . $row["ID_vespa"] . " - " . $row["Nome"] . "</option>";
              }
            } else {
              echo "<option value=''>Nessuna vespa trovata</option>";
            }
          
            // Chiusura della connessione al database
            $conn->close();
            ?>
          </select>
      <input type="submit" value="inserisci">
    </form>
    
</body>
</html>
