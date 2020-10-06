<?php

ini_set('display_errors', true);
$mysqli = new mysqli('mysql', 'root', 'secret', 'php_app');

$sql = "select * from user";
$res = $mysqli->query($sql);
while ($row = mysqli_fetch_assoc($res)) {
    $name = $row['name'];
    echo '<p>' . $name . '</p>';
}

