<?php
include 'includes/config.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    die("<p>Invalid request.</p>");
}

$id = $_GET['id'];
$query = "SELECT * FROM artists WHERE id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$artist = $result->fetch_assoc();

if (!$artist) {
    die("<p>Artist not found.</p>");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($artist['name']) ?> | Soniquete</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/artist.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;600&display=swap" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="assets/icons/favicon.ico">
</head>
<body>

    <header>
        <h1>Soniquete</h1>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="articles.php">Articles</a></li>
                <li><a href="artists.php">Artists</a></li>
                <li><a href="aboutus.html">About Us</a></li>
            </ul>
        </nav>
    </header>

    <div class="artist-container">
        <div class="artist-image">
            <img src="<?= htmlspecialchars($artist['image']) ?>" alt="<?= htmlspecialchars($artist['name']) ?>">
        </div>
        <div class="artist-info">
            <h1><?= htmlspecialchars($artist['name']) ?></h1>
            <?= $artist['description'] ?>
        </div>
        <a href="artists.php" class="back-button">← Back to Artists</a>
    </div>

    <footer>
        <p>&copy; 2025 Soniquete Digital Magazine. All Rights Reserved.</p>
    </footer>

</body>
</html>
