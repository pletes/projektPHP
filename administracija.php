<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>administracija</title>
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
    if (isset($_GET['id']) && isset($_GET['metoda']) && $_SESSION['razina']==1) {
        $id = $_GET['id'];
        $metoda = $_GET['metoda'];
        include 'connect.php';
        if ($metoda == 1) {
            $sql = "
        SELECT namirnice.id,namirnice.naziv,namirnice.slika,clanak.podnaslov,clanak.tekst FROM namirnice 
        INNER JOIN namirnice_clanak ON namirnice.id=namirnice_clanak.id_namirnice INNER JOIN clanak on namirnice_clanak.id_clanak=clanak.id
        WHERE namirnice.id=?;";
        $stmt = mysqli_stmt_init($con);
            $provjera = 0;
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, "i", $id);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);
                mysqli_stmt_bind_result($stmt, $idNamirnice,$naziv, $slika,$podnaslovClanka,$tekstClanka);
            }
            while (mysqli_stmt_fetch($stmt)) {
                if ($provjera != $idNamirnice) {
                    echo '<h1 class="naslovClanka">' . $naziv . '</h1>';
                    echo '<img src="' . $slika . '" id="slikaClanka">';
                    echo '<article class="clanakFull">';
                    echo '<h2>' . $podnaslovClanka . '</h2>';
                    echo '<p>' . $tekstClanka . '</p>';
                    $provjera = $idNamirnice;
                }
                if ($provjera == $idNamirnice) {
                    echo '<h2>' . $podnaslovClanka . '</h2>';
                    echo '<p>' . $tekstClanka . '</p>';
                }
            }
            echo '</article>';
            echo '<p>JESTE LI SIGURNI DA ŽELITE IZBRISATI OVAJ ČLANAK</p>';
            echo '<form method="post" id="decisionFormDelete">
        <label>
            <input type="radio" name="decision" value="Da" required> Da
        </label>
        
        <label>
            <input type="radio" name="decision" value="Ne" required> Ne
        </label>
        
        <br><br>
        
        <button type="submit">Pošalji</button>
        ';

            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $odluka = $_POST['decision'];
                if ($odluka === 'Da') {
                    include 'connect.php';
                    $query = "DELETE FROM namirnice_clanak WHERE id_namirnice=" . $id . ";";
                    mysqli_query($con, $query);
                    $query = "
                    DELETE clanak
                    FROM clanak
                    LEFT JOIN namirnice_clanak ON clanak.id = namirnice_clanak.id_clanak
                    WHERE namirnice_clanak.id_clanak IS NULL;";
                    mysqli_query($con, $query);
                    $query = "
                    DELETE FROM namirnice WHERE id=" . $id . ";";
                    mysqli_query($con, $query);
                    echo "Izbrisali ste element";
                    echo '
        <script>
        setTimeout(function() {
            window.location.href="index.php"
        }, 3000);
            
        </script>
        ';
                }
                if($odluka==='Ne'){
                    echo "Niste izbrisali ste element";
                }
            }
        } elseif ($metoda == 0) {
            $stmt = mysqli_stmt_init($con);
            $id_podnaslova = [];
            $sql = "
        SELECT namirnice.id,namirnice.naziv,namirnice.slika,clanak.podnaslov,clanak.tekst, namirnice_clanak.uvod, namirnice.kategorija_id, clanak.id AS clanak_id FROM namirnice 
        INNER JOIN namirnice_clanak ON namirnice.id=namirnice_clanak.id_namirnice INNER JOIN clanak on namirnice_clanak.id_clanak=clanak.id
        WHERE namirnice.id=?;";
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, "i", $id);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $idNamirnice,$naziv, $slika,$podnaslovClanka,$tekstClanka,$uvod,$kategorijaID, $clanakID);
        }
            $provjera = 0;
            $podnaslov = 0;
            $tekst = 0;
            while (mysqli_stmt_fetch($stmt)) {
                array_push($id_podnaslova,$clanakID);
                if ($provjera != $idNamirnice) {
                    echo '<form id="decisionFormUpdate" method="post">
                    <div class="updateDiv">
                            <label for="naslovNamirnice">Unesite naziv Vaše namirnice:</label>
                            <br />
                            <input type="text" name="naslovNamirnice" id="naslovNamirnice" value="' . $naziv . '">
                            </div>
                            <br /> <br />
                            <div class="updateDiv">
                            <label for="uvodNamirnice">Unesite kratki sadržaj o Vašoj namirnici:</label>
                            <br />
                            <textarea name="uvodNamirnice" id="uvodNamirnice" cols="70" rows="20">' . $uvod. '</textarea>
                            <br /> <br /> </div>';
                           
                    $provjera = $idNamirnice;
                }
                if ($provjera == $idNamirnice) {
                    if($podnaslovClanka!=null){
                    echo ' <div class="updateDiv"><label for="podnaslov' . $podnaslov . '">Unesite podnaslov Vaše namirnice:</label>
                    <br />
                    <input type="text" id="podnaslov' . $podnaslov . '" name="podnaslov' . $podnaslov . '" value="' . $podnaslovClanka . '"></div>  <br /> <br />';
                    }
                    echo ' <div class="updateDiv"> <label for="tekst' . $tekst . '">Unesite sadržaj Vaše namirnice:</label>
                    <br />
                    <textarea id="tekst' . $tekst . '" name="tekst' . $tekst . '" cols="70" rows="20"  >' . $tekstClanka . '</textarea></div>  <br /> <br />';
                }
                $podnaslov++;
                $tekst++;
            }
            echo ' <div class="updateDiv"><label for="slikaNamirnice">Unesite sliku Vaše namirnice:</label>
            <br />
            <input name="slikaNamirnice" id="slikaNamirnice" type="file" accept="image/jpg,image/gif,image/png" value="' . $slika . '" onChange="setImageURL(this)"></input><br />
            <img src="' . $slika . '" width=100px></div>
            <br /> <br />
            <div class="updateDiv">
            <label for="kategorija">Odaberite kategoriju</label><br />
            <select id="kategorija" name="kategorija">
                <option value="4">Voće</option>
                <option value="5">Povrće</option>
                <option value="9">Meso</option>
                <option value="1">Mliječni proizvod</option>
                <option value="3">Pekarski proizvod</option>
                <option value="6">Začin</option>
                <option value="7">Zaslađivač</option>
                <option value="8">Ulje</option>
                <option value="2">Jaja</option>
            </select>
            </div>
            <br><br>
            <p>JESTE LI SIGURNI DA ŽELITE PROMIJENITI OVAJ ČLANAK</p>
            <label>
                <input type="radio" name="decision" value="Da" required> Da
            </label>
        
            <label>
                <input type="radio" name="decision" value="Ne" required> Ne
            </label>
        
            <br><br>
        
            <button class="odabir" type="submit">Pošalji</button>
            </form>
            <script>
  document.getElementById("kategorija").value = \'' . $kategorijaID . '\'; 
</script>
            <br /> <br />';
            echo '<script>
                let inputSlika = document.getElementById(\'slikaNamirnice\');
                
                function fileListFrom (files) {
                    const b = new ClipboardEvent("").clipboardData || new DataTransfer();
                    for (const file of files) b.items.add(file);
                    return b.files;
                }

                let fileList;
                if("' . $slika . '" !== ""){
                    fileList = fileListFrom([
                        new File([\'content\'], "' . $slika . '")
                    ]);
                    inputSlika.files = fileList;
                }

                function setImageURL(uploadSlika){
                    if(uploadSlika.files[0]){
                        const nazivSlike = uploadSlika.files[0].name;
                        if(!uploadSlika.files[0].name.includes("slike/")){
                            let naziv = "slike/"+nazivSlike;
                            fileList = fileListFrom([
                                new File([\'content\'], naziv)
                            ]);
                            inputSlika.files = fileList;
                        }
                    }
                }
                </script>';
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                if(isset($_POST['naslovNamirnice'])){
                $test=$_POST['naslovNamirnice'];
                echo '<script>console.log("' . $test . '")</script>';
                }
                // .' '.$_POST['slikaNamirnice'].' '.$_POST['uvodNamirnice'].' '.$id.'
                $odluka = $_POST['decision'];
                if ($odluka === 'Da') {

                    $updateQuery1 = "
                    UPDATE namirnice
                    SET kategorija_id= " . $_POST['kategorija'] . ", naziv='" . $_POST['naslovNamirnice'] . "', slika='" . $_POST['slikaNamirnice'] . "' WHERE id = $id;";
                    $updateQuery2 = "
                    UPDATE namirnice_clanak
                    SET uvod='" . $_POST['uvodNamirnice'] . "'
                    WHERE id_namirnice = $id;";
                    mysqli_query($con, $updateQuery1);
                    mysqli_query($con, $updateQuery2);
                    if($podnaslovClanka!=null){
                    for ($i = 0; $i < count($id_podnaslova); $i++) {
                        $podnaslov2 = $_POST['podnaslov' . $i];
                        $tekst2 = $_POST['tekst' . $i];
                        $clanak_id = $id_podnaslova[$i];

                        $updateQuery3 = "UPDATE clanak 
                                         SET podnaslov = '$podnaslov2', tekst = '$tekst2' 
                                         WHERE id = $clanak_id";
                        mysqli_query($con, $updateQuery3);
                    }
                }

                    echo "Izmjenili ste element!";
                    echo '
                    <script>
                    setTimeout(function() {
                        window.location.href="index.php"
                    }, 3000);
                        
                    </script>
                    ';
                   
                }
                if($odluka==='Ne'){
                    echo "Niste izmjenili element!";
                    echo '
                    <script>
                    setTimeout(function() {
                        window.location.href="index.php"
                    }, 3000);
                        
                    </script>
                    ';
                }
            }
        }

    }
    else if($_SESSION['razina']==0 && isset($_SESSION['username'])){
        echo '
        <script>
            alert("Ne možete brisati niti uredivati clanke,jer nemate administracijska prava!");
            window.location.href="index.php";
        </script>
        ';
    }
    else{
        echo '
        <script>
            alert("Ne možete brisati niti uredivati članke, ako niste naš član! Molimo Vas da se ulogirate/registrirate!");
            window.location.href="login.php";
        </script>
        ';
    }
    ?>

    <footer>
        <p>Ema Pleteš</p>
        <p><a href="mailto:epletes@tvz.hr">epletes@tvz.hr</a></p>
        <p>2024.</p>
    </footer>
</body>

</html>