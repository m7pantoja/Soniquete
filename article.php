<?php
include 'includes/config.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    die("<p>Invalid request.</p>");
}

$id = $_GET['id'];
$query = "SELECT * FROM articles WHERE id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();
$article = $result->fetch_assoc();

if (!$article) {
    die("<p>Article not found.</p>");
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['name']) && isset($_POST['comment'])) {
    $name = trim($_POST['name']);
    $comment = trim($_POST['comment']);
    
    if (!empty($name) && !empty($comment)) {
        $insertQuery = "INSERT INTO comments (article_id, name, comment) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($insertQuery);
        $stmt->bind_param("iss", $id, $name, $comment);
        $stmt->execute();
    }
}

$commentQuery = "SELECT name, comment, created_at FROM comments WHERE article_id = ? ORDER BY created_at DESC";
$stmt = $conn->prepare($commentQuery);
$stmt->bind_param("i", $id);
$stmt->execute();
$comments = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($article['title']) ?> | Soniquete</title>
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/article.css">
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

    <div class="article-container">
        <h1><?= htmlspecialchars($article['title']) ?></h1>
        <span class="author"><?= htmlspecialchars($article['author']) ?></span>
        <span class="date"><?= htmlspecialchars($article['created_at']) ?></span>
        <img src="<?= htmlspecialchars($article['img']) ?>" alt="<?= htmlspecialchars($article['title']) ?>">
        <?= $article['content'] ?>
        <a href="articles.php" class="back-button">← Back to Articles</a>

        <div class="comment-section">
            <h2>Comments</h2>
            <div class="comments-list">
                <?php while ($row = $comments->fetch_assoc()): ?>
                    <div class="comment">
                        <strong><?= htmlspecialchars($row['name']) ?></strong>
                        <p><?= nl2br(htmlspecialchars($row['comment'])) ?></p>
                        <span class="comment-date"><?= htmlspecialchars($row['created_at']) ?></span>
                    </div>
                <?php endwhile; ?>
            </div>

            <form action="article.php?id=<?= $id ?>" method="POST">
                <input type="text" name="name" placeholder="Your name" required>
                <textarea name="comment" placeholder="Write your comment..." required></textarea>
                <button type="submit">Send</button>
            </form>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Soniquete Digital Magazine. All Rights Reserved.</p>
    </footer>

</body>
</html>
