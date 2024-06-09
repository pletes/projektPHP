<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>Kategorija</title>
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
                    <?php session_start();
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
        function openNewPage(id) {
            window.location.href = 'clanak.php?id=' + id;
        }
        function openAddPage() {
            window.open('unos.html', 'popupWindow', 'width=600,height=400,scrollbars=yes');
        }
        function openDeleteOrUpdatePage(id, metoda) {
            window.location.href = 'administracija.php?id=' + id + '&metoda=' + metoda;
        }
    </script>
    <?php
    if (isset($_GET['id'])) {
        include 'connect.php';
        $id = $_GET['id'];
        $sql = "SELECT kategorija.naziv FROM kategorija WHERE kategorija.id=?;";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, "i", $id);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $kategorijaNaziv);
            mysqli_stmt_fetch($stmt);
        }
        echo '<h1>' . $kategorijaNaziv . '</h1>';
        $sql = "SELECT DISTINCT namirnice_clanak.id_namirnice, namirnice_clanak.uvod, namirnice.slika, namirnice_clanak.prikaz FROM namirnice_clanak INNER JOIN namirnice 
        ON namirnice_clanak.id_namirnice=namirnice.id WHERE namirnice.kategorija_id=?";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, "i", $id);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $namirnicaID,$uvod,$slika,$prikaz);
        }
        echo '<div class="content">';
        while (mysqli_stmt_fetch($stmt)) {
            echo '<div class="clanak">';
            echo '<div class="articleDio">';
            echo '<img src="' . $slika . '">';
            echo '<p>' . $uvod . '</p>';
            echo '</div>';
            echo '<button class="odabir" onclick="openNewPage(' . $namirnicaID . ')" type="button">Više</button>';
            echo '<button class="odabir" onclick="openDeleteOrUpdatePage(' . $namirnicaID . ',1)" type="button">Izbriši</button>';
            echo '<button class="odabir" onclick="openDeleteOrUpdatePage(' . $namirnicaID . ',0)" type="button">Uredi</button>';
            echo '</div>';
        }
        echo '</div>';
    }
    ?>
</body>

</html>