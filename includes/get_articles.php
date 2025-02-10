<?php
include 'config.php'; // Connecting to Local Database

$query = "SELECT id, title, img FROM articles ORDER BY created_at DESC LIMIT 4"; 
$result = mysqli_query($conn, $query);

$articles = [];
while ($row = mysqli_fetch_assoc($result)) {
    $articles[] = $row; 
}

header('Content-Type: application/json');
echo json_encode($articles);

