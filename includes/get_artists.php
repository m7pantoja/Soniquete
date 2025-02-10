<?php
include 'config.php';

$query = "SELECT id, name, image FROM artists";
$result = mysqli_query($conn, $query);

$artists = [];
while ($row = mysqli_fetch_assoc($result)) {
    $artists[] = $row;
}

header('Content-Type: application/json');
echo json_encode($artists);

