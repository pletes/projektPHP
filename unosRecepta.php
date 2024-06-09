<?php
session_start();
if (!isset($_SESSION['id'])) {
    echo '<script>
        alert("Ne možete dodati recept, ako niste naš član! Molimo Vas da se ulogirate/registrirate!");
        window.location.href="login.php";
        </script>';
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="style.css" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodaj Recept</title>
</head>

<body class="bodyDodavanjeNamirnice">
    <form name="dodavanjeRecepta" method="post">

        <label for="naslovRecepta">Unesite naziv Vašeg recepta:</label>
        <br />
        <input type="text" name="naslovRecepta" id="title" required>
        <span id="porukaTitle" class="bojaPoruke"></span>
        <br /> <br />

        <label for="recept">Unesite recept:</label>
        <br />
        <textarea id="about" name="recept" cols="30" rows="10" required></textarea>
        <span id="porukaAbout" class="bojaPoruke"></span>
        <br /> <br />
        <label for="slikaRecepta">Unesite sliku Vašeg recepta:</label>
        <br />
        <input id="pphoto" name="slikaRecepta" type="file" accept="image/jpg,image/gif, image/png" required></input>
        <span id="porukaSlika" class="bojaPoruke"></span>
        <br /> <br />
        <button type="reset" value="Poništi">Poništi</button>
        <button type="submit" value="Prihvati" id="slanje">Prihvati</button>
    </form>

    <script type="text/javascript">

        document.getElementById("slanje").onclick = function (event) {
            var slanjeForme = true;

            var poljeTitle = document.getElementById("title");
            var title = document.getElementById("title").value;
            if (title.length < 5 || title.length > 100) {
                slanjeForme = false;
                poljeTitle.style.border = "1px dashed red";
                document.getElementById("porukaTitle").innerHTML = "<br>Naslov recepta mora imati između 5 i 100 znakova!<br>";
                document.getElementById("porukaTitle").style.color = "red";
            } else {
                poljeTitle.style.border = "1px solid green";
                document.getElementById("porukaTitle").innerHTML = "";
            }

            var poljeAbout = document.getElementById("about");
            var about = document.getElementById("about").value;
            if (about.length < 5 || about.length > 1000) {
                slanjeForme = false;
                poljeAbout.style.border = "1px dashed red";
                document.getElementById("porukaAbout").innerHTML = "<br>Recept mora imati između 5 i 1000 znakova!<br>";
                document.getElementById("porukaAbout").style.color = "red";
            } else {
                poljeAbout.style.border = "1px solid green";
                document.getElementById("porukaAbout").innerHTML = "";
            }

            var poljeSlika = document.getElementById("pphoto");
            var pphoto = document.getElementById("pphoto").value;
            if (pphoto.length == 0) {
                slanjeForme = false;
                poljeSlika.style.border = "1px dashed red";
                document.getElementById("porukaSlika").innerHTML = "<br>Slika mora biti unesena!<br>";
                document.getElementById("porukaSlika").style.color = "red";
            } else {
                poljeSlika.style.border = "1px solid green";
                document.getElementById("porukaSlika").innerHTML = "";
            }

            if (slanjeForme != true) {
                event.preventDefault();
            }

        }
    </script>

    <?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        
        if (isset($_SESSION['id'])) {
            $naslovRecepta = $_POST['naslovRecepta'];
            $recept = $_POST['recept'];
            $target_dir = 'slike/' . $_POST['slikaRecepta'];
            $uploadOk = 1;
            include 'connect.php';
            $sql = "INSERT INTO recepti (naslov, tekst, id_korisnik, slika) VALUES (?,?,?,?)";
            $stmt = mysqli_stmt_init($con);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, 'ssis', $naslovRecepta, $recept, $_SESSION['id'], $target_dir);
                mysqli_stmt_execute($stmt);
            }
            echo "Uspješno ste unijeli podatke";
            mysqli_close($con);
            echo '<script>
                     setTimeout(function() {
                        window.close()
                    }, 1000);
                  </script>';
        }else{
            echo '
            <script>
                window.confirm("Ne možete dodati recept, ako niste naš član! Molimo Vas da se ulogirate/registrirate!");
                window.location.href="login.php";
            </script>
            ';
        }
    } else {
        echo "Podaci nisu poslati.";
    }

    ?>
<script>
    window.onunload = function() {
      if (window.opener && !window.opener.closed) {
        window.opener.location.reload();
      }
    }
    </script>
</body>

</html>