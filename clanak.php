<!DOCTYPE html>
<html lang="hrvv">

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ema Pletes">
    <meta name="description" content="Informacije o siru">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <title>Sir</title>
</head>

<body class="bodi">
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
            <li><a class="activeMenuItem" href="index.php">Naslovnica</a></li>
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
    <script>
        window.onscroll = function () { myFunction() };

        var navbar = document.getElementById("navbar");
        var sticky = navbar.offsetTop;

        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }
    </script>

    <?php
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        include 'connect.php';
        $sql = "
        SELECT namirnice.naziv,namirnice.slika,clanak.podnaslov,clanak.tekst FROM namirnice 
        INNER JOIN namirnice_clanak ON namirnice.id=namirnice_clanak.id_namirnice INNER JOIN clanak on namirnice_clanak.id_clanak=clanak.id
        WHERE namirnice.id=?;";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, "i", $id);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $naziv, $slika, $podnaslov, $tekst);
        }
        $provjera = 0;
        while (mysqli_stmt_fetch($stmt)) {
            if ($provjera != $id) {
                echo '<h1 class="naslovClanka">' . $naziv . '</h1>';
                echo '<img src="' . $slika . '" id="slikaClanka">';
                echo '<article class="clanakFull">';
                echo '<h2>' . $podnaslov . '</h2>';
                echo '<p>' . $tekst . '</p>';
                $provjera = $id;
            } else if ($provjera == $id) {
                echo '<h2>' . $podnaslov . '</h2>';
                echo '<p>' . $tekst . '</p>';
            }
        }
        echo '</article>';
    }
    ?>

    <footer>
        <p>Ema Pleteš</p>
        <p><a href="mailto:epletes@tvz.hr">epletes@tvz.hr</a></p>
        <p>2024.</p>
    </footer>
</body>

</html>