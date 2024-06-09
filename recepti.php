<!DOCTYPE html>
<html lang="hrv">
<?php
session_start(); ?>

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ema Pletes">
    <meta name="description" content="Recepti dostupni svima">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>Recepti</title>
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
            <li><a class="activeMenuItem" href="recepti.php">Recepti</a></li>
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
                    <?php
                    if (isset($_SESSION['id'])): ?>
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
    <script>
        function openAddPage() {
            window.open('unosRecepta.php', 'popupWindow', 'width=600,height=400,scrollbars=yes');
            
        }
        function upit($id) {
            if (confirm("jeste li sigurni da želite obrisati recept?") == true) {
                window.location.href = "deleteRecept.php?id=" + $id;
            }
        }
    </script>
    <?php
    include 'connect.php';

    echo '<div class="contentRecepti">';
    echo '<h1>RECEPTI</h1>';
    echo '<div class="dodajRecept"><button class="odabir" onclick="openAddPage()" type="button">Dodaj Recept</button></div>';
    $query = "SELECT * FROM recepti ORDER BY id DESC";
    $result = mysqli_query($con, $query);
    while ($row = mysqli_fetch_array($result)) {
        echo '<div class="recept">';
        echo '<img src="' . $row['slika'] . '">';
        echo '<h2>' . $row['naslov'] . '</h2>';
        echo '<br /><br />';
        $query2 = "SELECT DISTINCT * FROM korisnik WHERE id=" . $row['id_korisnik'];
        $result2 = mysqli_query($con, $query2);
        $row2 = mysqli_fetch_array($result2);
        echo 'objavio korisnik: ' . $row2['username'];
        echo '<br /><br />';
        $tekst = $row['tekst'];
        $paragraphs = explode("\n", $tekst);
        $formatirani = '';
        foreach ($paragraphs as $paragraph) {
            $formatirani .= '<p>' . htmlspecialchars($paragraph) . '</p>';
        }
        echo $formatirani;
        if (isset($_SESSION['id'])) {
            if ($_SESSION['id'] == $row['id_korisnik']) {
                echo '<button class="odabir" onclick="upit(' . $row['id'] . ')">Izbriši</button>';
            }
        }
        echo '</div>';
    }

    echo '</div>'
        ?>

    <footer>
        <p>Ema Pleteš</p>
        <p><a href="mailto:epletes@tvz.hr">epletes@tvz.hr</a></p>
        <p>2024.</p>
    </footer>
</body>

</html>