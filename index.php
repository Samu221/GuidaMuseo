<?php
   
    $db = mysqli_connect("localhost","root","","progettomuseoDB");
    $id =  $_GET["id"];
?>
<!DOCTYPE html>
<html lang="it" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta charset="utf-8">
    <link rel="icon" type="image/x-icon" href="img\favicon.png">
    <link rel="stylesheet" href="stile.css">
    <link href='https://fonts.googleapis.com/css?family=Rubik' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Akshar:wght@400;500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Leckerli+One&display=swap" rel="stylesheet">

	<title>Know Your Vespa</title>
    <link rel="shortcut icon" href=".ico">
  </head>
  <body>

    <ul class="NavBar" style="height:62px;">
      <li> <a href="https://www.museopiaggio.it/" target="_blank"><img src="./img/logo-museo-piaggio.svg"/> </a> </li>
      <li class="right" href="#home">
      <!--
        <div id="line" class="dropdown" style="padd">
        <button class ="dropbtn"><i class="fa fa-reorder" style="font-size:30px;padding-right:50px;"></i></button>
        <div class="dropdown-content">
         <a href="#" style="color: black;text-align: left;">Link 1</a>
         <a href="#" style="color: black;text-align: left;">Link 2</a>
         <a href="#" style="color: black;text-align: left;">Link 3</a>
       </div>
     </div>
     -->
      </li>
    </ul>

      <div id="PictureSpace" >

          <div id="Picture_into">

        <center>
		      <section>
          <?php
                $query = " SELECT filename FROM image WHERE id_vespa = $id ";
                $result = mysqli_query($db, $query);
                $row=mysqli_fetch_assoc($result);
                
                  echo '<img src="'.$row['filename'].'" placeholde="img" >'; 
           ?> 
            </section>
        </center>


        </div>
      </div>
<br>


      <div id="DescriptionSpace">
        <div id="Description_into">

          <div id="info">
            
              <?php
                $query = "SELECT * FROM vespa WHERE ID_vespa='$id'";
                
                $result = mysqli_query($db, $query);

                $row=mysqli_fetch_assoc($result);

                echo '<h1>'.$row['Nome'].'</h1>';
              ?>
           

            <div class="r">
              <div class="c">
                <h2 style="text-align:center">MODELLO</h2>
                <p><?php
                
                
                $result = mysqli_query($db, $query);
                $row=mysqli_fetch_assoc($result);
      
                echo "<p>". ucwords($row['Nome']) ."</p>";

                
              ?></p>
              <br>
                <h2 style="text-align:center">CILINDRATA</h2>
                <p><?php
                
                $result = mysqli_query($db, $query);
                $row=mysqli_fetch_assoc($result);

                    if($row['Cilindrata']==0)
                        echo "<p> N/D </p>";
                    else
                        echo "<p>".$row['Cilindrata']." CC</p>";
                
              ?></p>
              </div>
              
              <div class="c">
                <h2 style="text-align:center">ARTISTA</h2>
                <p><?php
               
        
                $result = mysqli_query($db, $query);
                $row=mysqli_fetch_assoc($result);

                echo "<p>". ucwords($row['Artista'])."</p>";
                
              ?></p>
              <br>
                <h2 style="text-align:center">ANNO</h2>
                <p><?php
                
            
                $result = mysqli_query($db, $query);
                $row=mysqli_fetch_assoc($result);

                    if($row['Anno']==0)
                        echo "<p> N/D </p>";
                    else
                        echo "<p>".$row['Anno']."</p>";
                
              ?></p>
              </div>
            </div>
          </div>
         
            <br><br><br><br>
               <hr>
            <div id="text" style="margin:50px;">
            <p><?php
                
                $result = mysqli_query($db, $query);
                $row=mysqli_fetch_assoc($result);

                    echo "<p>".$row['Descrizione']."</p>";
                
              ?></p>

           </div>
            <hr>

            <?php

                $sql="SELECT filename
                      FROM audio
                      WHERE id_vespa='$id'";

                  $result = mysqli_query($db, $sql);
                  $row=mysqli_fetch_assoc($result);
				  
				  echo '<audio controls id="audio" >';
				  echo '<source src="'.$row['filename'].'" type="audio/mpeg">'; 
				  echo '</audio>';
            ?>

            
            <br><br><br>
		</div>
	</div>

      <footer id="CreditsSpace" style="  width: 100%; height:4px;">
        <div class="row">

            <div class="column" id="Piaggio">
                <img src="./img/logo-museo-piaggio.svg" style="padding-left:325px;margin-top:35px;"/>
            </div>
            <div class="column">
               <a href="https://www.marconipontedera.edu.it/" target="_blank"><h2 style="padding-top:15px;">Sviluppo a cura di <br>5CI - ITIS MARCONI PONTEDERA</h2></a>
            </div>
            <div class="column" id="Marconi">
                <a href="https://www.marconipontedera.edu.it/" target="_blank"><img src="./img/logo-marconi.png" style="height:150px; float:left; padding-left:100px;"/>
            </div>
        </div>

        <br>
        <div id="footer" style="padding-top: 0px;">
          <p >Indirizzo:Viale R.Piaggio, 7-56025 &nbsp;&nbsp;Telefono:0587 27171&nbsp;&nbsp;Email:museo@museopiaggio.it</p>
          <br>
        <!--- <hr id="footer"style="border:2px solid #003F8F;"> --->
        </div>

      </footer>


    </div>

    <script type="text/javascript" src="./Scripts/script.js"></script>

  </body>
</html>
