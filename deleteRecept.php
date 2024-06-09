<?php
include 'connect.php';
$query = "DELETE FROM recepti WHERE id=" . $_GET['id'];
$result = mysqli_query($con, $query);
echo '<script>window.location.href="recepti.php";</script>';
?>