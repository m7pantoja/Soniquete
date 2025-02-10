<?php
include 'includes/config.php';

$query = "SELECT * FROM artists";
$result = mysqli_query($conn, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artists | Soniquete</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/artists.css">
    <link rel="stylesheet" href="assets/css/footer.css">
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

    <div class="artists-container">
        <h1>Artists</h1>
        <div class="artists-grid">
            <?php while ($row = mysqli_fetch_assoc($result)): ?>
                <div class="artist-card">
                    <a href="artist.php?id=<?= htmlspecialchars($row['id']) ?>">
                        <img src="<?= htmlspecialchars($row['image']) ?>" alt="<?= htmlspecialchars($row['name']) ?>">
                        <h2><?= htmlspecialchars($row['name']) ?></h2>
                    </a>
                </div>
            <?php endwhile; ?>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Soniquete Digital Magazine. All Rights Reserved.</p>
    </footer>

</body>
</html>
