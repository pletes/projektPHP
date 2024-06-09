<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dodaj namirnicu</title>
</head>

<body class="bodyDodavanjeNamirnice">
    <?php



    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $naslovNamirnice = $_POST['naslovNamirnice'];
        $uvodNamirnice = $_POST['uvodNamirnice'];
        $tekstNamirnice = $_POST['tekstNamirnice'];
        $kategorija = $_POST['kategorija'];
        $spremitiArhiva = isset($_POST['checkboxNamirnice']) ? 1 : 0;
        $target_dir = 'slike/' . $_POST['slikaNamirnice'];
        $uploadOk = 1;
        include 'connect.php';
        $sql = "INSERT INTO namirnice (naziv, kategorija_id, slika) VALUES (?,?,?)";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, 'sis', $naslovNamirnice, $kategorija, $target_dir);
            mysqli_stmt_execute($stmt);
        }
        $sql = "INSERT INTO clanak (tekst) VALUES (?)";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, 's', $tekstNamirnice);
            mysqli_stmt_execute($stmt);
        }
        $query = "SELECT MAX(namirnice.id) FROM namirnice;";
        $id_namirnice = mysqli_query($con, $query);
        $row1 = mysqli_fetch_array($id_namirnice);
        $query = "SELECT MAX(clanak.id) FROM clanak;";
        $id_clanak = mysqli_query($con, $query);
        $row2 = mysqli_fetch_array($id_clanak);
        $sql = "INSERT INTO namirnice_clanak (id_namirnice, id_clanak, uvod, prikaz) VALUES (?,?,?,?)";
        $stmt = mysqli_stmt_init($con);
        if (mysqli_stmt_prepare($stmt, $sql)) {
            mysqli_stmt_bind_param($stmt, 'iisi', $row1['MAX(namirnice.id)'], $row2['MAX(clanak.id)'], $uvodNamirnice, $spremitiArhiva);
            mysqli_stmt_execute($stmt);
        }
        echo 'Uspjesno ste unijeli artikl';
        mysqli_close($con);
        echo '<script>
  setTimeout(function() {
      window.close()
  }, 2000);
</script>';
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