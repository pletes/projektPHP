<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connection</title>
</head>
<body>
<?php
$servername = "localhost"; $username = "ema"; $password = "ema";
$basename = "projekt";
$con = mysqli_connect($servername, $username, $password, $basename) or die('Error connecting to MySQL server.');
mysqli_set_charset($con, "utf8");
if (!$con) {
echo "Connected unsuccessfully";
}?>
</body>
</html>