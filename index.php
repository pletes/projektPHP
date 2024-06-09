<!DOCTYPE html>
<html lang="hrv">
<?php
session_start();
?>

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ema Pletes">
    <meta name="description" content="Kuharica dostupna svima">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css">
    <title>Naslovna</title>

</head>

<body class="bodi">
    <header class="headerNaslovne">
        <div class="slikeNaslovne">
            <img src="slike/kuharica.png" id="kuharicaSlika">
            <img src="slike/hranaNaslovna.png" id="hranaSlika">

        </div>
        <div class="qouteNaslovna">
            <div class="divs">
                <div class="cls1">
                    <p id="prviQoute">
                        Hrana je jedini jezik koji svi razumiju, bez obzira
                        na to otkuda dolazimo.
                    </p>
                </div>
                <div class="cls2">
                    <p id="drugiQoute">
                        U kuhinji nema pravila, samo inspiracija koja vodi do
                        nevjerojatnih okusa.
                    </p>
                </div>
                <div class="cls3">
                    <p id="treciQoute">
                        Nema veće radosti od one koja dolazi iz dijeljenja
                        obroka s voljenima.
                    </p>
                </div>
            </div>

            <li class="nav-dots">
                <button class="nav-dot" id="img-dot-1" aria-label="Slide 1"></button>
                <button class="nav-dot" id="img-dot-2" aria-label="Slide 2"></button>
                <button class="nav-dot" id="img-dot-3" aria-label="Slide 3"></button>
            </li>

            <script>
                $(document).ready(function () {
                    const dotActiveClass = 'nav-dot--active';
                    let currentIndex = 0;
                    const totalSlides = $(".divs>div").length;

                    function showSlide(index) {
                        $(".divs>div").hide();
                        $(".divs>div").eq(index).show();
                        $(`.${dotActiveClass}`).removeClass(dotActiveClass);
                        $($('.nav-dot').get(index)).addClass(dotActiveClass);
                    }

                    function nextSlide() {
                        currentIndex = (currentIndex + 1) % totalSlides;
                        showSlide(currentIndex);
                    }

                    setInterval(nextSlide, 5000);

                    $(".nav-dot").each(function (index) {
                        $(this).click(() => {
                            currentIndex = index;
                            showSlide(currentIndex);
                        });
                    });

                    showSlide(currentIndex);
                });



            </script>
        </div>

    </header>
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
                    <?php if (isset($_SESSION['id'])): ?>
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
    <section>
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
        if (isset($_SESSION['username'])) {
            echo '<div class="prijavljeniKorisnik">Pozdrav ' . $_SESSION['username'] . '!</div>';
        }
        ?>
        <h1>Zanimljivosti o namjernicama</h1>
        <?php
        include 'connect.php';
        $query = "SELECT * FROM kategorija ";
        $result2 = mysqli_query($con, $query);
        while ($row2 = mysqli_fetch_array($result2)) {
            $sql = "SELECT DISTINCT kategorija.id FROM namirnice
            INNER JOIN kategorija ON namirnice.kategorija_id=kategorija.id 
            INNER JOIN namirnice_clanak ON namirnice.id=namirnice_clanak.id_namirnice WHERE namirnice.kategorija_id=?;";
            $stmt = mysqli_stmt_init($con);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, "i", $row2['id']);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);
                mysqli_stmt_bind_result($stmt, $kategorijaID);
                mysqli_stmt_fetch($stmt);
            }
            $help=0;
            if (mysqli_stmt_num_rows($stmt) > 0 ) {
                
                $sql = "SELECT DISTINCT namirnice_clanak.id_namirnice, namirnice_clanak.uvod, namirnice.slika, namirnice_clanak.prikaz FROM namirnice_clanak INNER JOIN namirnice 
                  ON namirnice_clanak.id_namirnice=namirnice.id WHERE namirnice.kategorija_id=?;";
                $provjera = 0;
                $stmt = mysqli_stmt_init($con);
                if (mysqli_stmt_prepare($stmt, $sql)) {
                    mysqli_stmt_bind_param($stmt, "i", $kategorijaID);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);
                    mysqli_stmt_bind_result($stmt, $idNamirnice, $uvod, $slika, $prikaz);
                }
                $count=0;
                while (mysqli_stmt_fetch($stmt)) {
                    if($prikaz==1 && $help==0){
                        echo '<h2 class="podnasloviNaslovne">' . $row2['naziv'] . '</h2>';
                        echo '<div class="content">';
                        echo '<div class="clanak">';
                        echo '<div class="articleDio">';
                        echo '<img src="' . $slika . '">';
                        echo '<p>' . $uvod . '</p>';
                        echo '</div>';
                        echo '<button class="odabir" onclick="openNewPage(' . $idNamirnice . ')" type="button">Više</button>';
                        echo '<button class="odabir" onclick="openDeleteOrUpdatePage(' . $idNamirnice . ',1)" type="button">Izbriši</button>';
                        echo '<button class="odabir" onclick="openDeleteOrUpdatePage(' . $idNamirnice . ',0)" type="button">Uredi</button>';
                        echo '</div>';
                        $help++;
                        $count++;
                    }
                    else if ($prikaz == 1 && $count<=5) {
                        echo '<div class="clanak">';
                        echo '<div class="articleDio">';
                        echo '<img src="' . $slika . '">';
                        echo '<p>' . $uvod . '</p>';
                        echo '</div>';
                        echo '<button class="odabir" onclick="openNewPage(' . $idNamirnice . ')" type="button">Više</button>';
                        echo '<button class="odabir" onclick="openDeleteOrUpdatePage(' . $idNamirnice . ',1)" type="button">Izbriši</button>';
                        echo '<button class="odabir" onclick="openDeleteOrUpdatePage(' . $idNamirnice . ',0)" type="button">Uredi</button>';
                        echo '</div>';
                    }
                }
                echo '</div>';
            }
        }
        ?>
        </div>
    </section>
    <button class="odabir" onclick="openAddPage()" type="button">Dodaj namirnicu</button>
    <footer>
        <p>Ema Pleteš</p>
        <p><a href="mailto:epletes@tvz.hr">epletes@tvz.hr</a></p>
        <p>2024.</p>
    </footer>
</body>

</html>