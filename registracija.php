<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ema Pletes">
    <meta name="description" content="Kuharica dostupna svima">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>Registracija</title>
</head>
<body class="bodiZuti">
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var dropbtn = document.getElementById('dropbtn');
            var dropdownContent = document.querySelector('#dropdown-content-kategorija');

            dropbtn.addEventListener('click', function () {
                dropdownContent.classList.toggle('show');
            });
        });

        document.addEventListener('DOMContentLoaded', function () {
            var dropbtnn = document.getElementById('dropbtnn');
            var dropdownContent = document.querySelector('#dropdown-content-vise');

            dropbtnn.addEventListener('click', function () {
                dropdownContent.classList.toggle('show');
            });
        });
    </script>
    <nav id="navbar">
        <ul>
            <li><a href="index.php">Naslovnica</a></li>
            <li><a href="recepti.php">Recepti</a></li>
            <li class="dropdown">
                <button id="dropbtn" class="dropbtn">Kategorija
                    <i class="fa fa-caret-down"></i>
                </button>
                <div id="dropdown-content-kategorija" class="dropdown-content">
                    <a href="kategorija.php?id=1">Mliječni proizvod</a>
                    <a href="kategorija.php?id=2">Jaja</a>
                    <a href="kategorija.php?id=3">Pekarski proizvod</a>
                    <a href="kategorija.php?id=4">Voće</a>
                    <a href="kategorija.php?id=5">Povrće</a>
                    <a href="kategorija.php?id=6">Začin</a>
                    <a href="kategorija.php?id=7">Zaslađivač</a>
                    <a href="kategorija.php?id=8">Ulje</a>
                    <a href="kategorija.php?id=9">Meso</a>
                </div>
            </li>
            <li style="float: right;" class="dropdown">
                <button id="dropbtnn" class="dropbtn">Više
                    <i class="fa fa-caret-down"></i>
                </button>
                <div id="dropdown-content-vise" class="dropdown-content">
                <?php session_start();if(isset($_SESSION['id'])): ?>
                    <a href="logout.php">Logout</a>
                <?php else: ?>
                    <a href="login.php">Login</a>
                    <a href="registracija.php">Registracija</a>
                <?php endif; ?>
                </div>
            </li>
        </ul>
    </nav>

    <div class="lrDiv">
        <div class="lr">

            <h1>REGISTRACIJA U SUSTAV</h1>
            <br />
            <form method="post">
                <label for="ime">ime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="text" id="ime" name="ime" required>
                <br /><br />
                <label for="prezime">prezime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="text" id="prezime" name="prezime" required>
                <br /><br />
                <label for="username">username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="text" id="username" name="username" required>
                <br /><br />
                <label for="password">password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <input type="password" id="password" name="password" required>
                <br /><br />
                <label for="password2">ponovite unos: </label>
                <input type="password" id="password2" name="password2" required>
                <br /><br />
                <input class="odabir" type="submit" value="Pošalji">
            </form>
        </div>
    </div>
    <?php

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        include 'connect.php';
        $ime = $_POST['ime'];
        $prezime = $_POST['prezime'];
        $username2 = $_POST['username'];
        $password2 = $_POST['password'];
        $password3 = $_POST['password2'];
        $sql ="SELECT * FROM korisnik WHERE korisnik.username=?";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, "s", $username2);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $id, $ime, $prezime, $username,$password, $razina);
        }
        if(mysqli_stmt_num_rows($stmt) == 0){
        if ($password3 === $password2) {
            include 'connect.php';
            $hashed=password_hash($password2,CRYPT_BLOWFISH);
            $sql = "INSERT INTO korisnik (ime, prezime, username, password) values (?, ?, ?, ?)"; 
            $stmt = mysqli_stmt_init($con);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, 'ssss',$ime ,$prezime, $username2,  $hashed); 
                mysqli_stmt_execute($stmt);
                echo '
                <script>
                    window.location.href="login.php";
                </script>
                ';
            }
        }
        else{
            echo '
                <script>
                    alert("Nisu jednake lozinke! Molimo Vas da ponovite unos!")
                </script>
                ';
        }
    }else{
        echo '
                <script>
                    alert("User sa tim imenom vec postoji!")
                </script>
                ';
    }
    }

    ?>
    <footer>
        <p>Ema Pleteš</p>
        <p><a href="mailto:epletes@tvz.hr">epletes@tvz.hr</a></p>
        <p>2024.</p>
    </footer>

</body>

</html>