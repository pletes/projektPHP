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
    <title>Login</title>
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
                    <a href="login.php">Login</a>
                    <a href="registracija.php">Registracija</a>
                </div>
            </li>
        </ul>
    </nav>

    <div class="lrDiv">
        <div class="lr">

            <h1>PRIJAVA U SUSTAV</h1>
            <br />
            <form method="post" action="login.php">
                <label for="username">username: </label>
                <input type="text" id="username" name="username" required>
                <br /><br />
                <label for="password">password: </label>
                <input type="password" id="password" name="password" required>
                <br /><br />
                <input class="odabir" type="submit" value="Pošalji">
            </form>
        </div>
    </div>

    <?php
session_start();
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        
        include 'connect.php';
        $password2 = $_POST['password'];
        $username2 = $_POST['username'];
        
       
        $sql = "SELECT * FROM korisnik WHERE username=?";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, "s", $username2);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            mysqli_stmt_bind_result($stmt, $id, $ime, $prezime, $username,$password, $razina);
        }
        if (mysqli_stmt_num_rows($stmt) > 0) {

            mysqli_stmt_fetch($stmt);
            
            if (password_verify($password2,$password)) {
                echo ('Uspješan login');
                $_SESSION['id']=$id;
                $_SESSION['username']=$username;
                $_SESSION['razina']=$razina;
                
                echo '<script>
                        if(window.innerHeight<500){
                            window.onunload = function() {
                                if (window.opener && !window.opener.closed) {
                                    window.opener.location.reload();
                                }
                            }
                            window.close();
                        }else{
                            setTimeout(function() {
                                window.location.href="index.php";
                            }, 2000);
                        }
                      </script>';
            }
            else echo 'fail';

        } else
            echo '<script>
                    alert ("Ovaj username ne postoji. Molimo Vas da se registrirate u sustav!");
                    window.location.href="registracija.php";
                 </script>    '; 
    }

    ?>
    <footer>
        <p>Ema Pleteš</p>
        <p><a href="mailto:epletes@tvz.hr">epletes@tvz.hr</a></p>
        <p>2024.</p>
    </footer>
</body>

</html>