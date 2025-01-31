<?php
include 'config.php'; 

$query = "SELECT * FROM articles ORDER BY created_at ASC";
$result = mysqli_query($conn, $query);

echo "<!DOCTYPE html>";
echo "<html lang='es'>";
echo "<head>";
echo "<meta charset='UTF-8'>";
echo "<meta name='viewport' content='width=device-width, initial-scale=1.0'>";
echo "<title>Articles | Soniquete</title>";
echo "<link rel='stylesheet' href='assets/css/header.css'>"; 
echo "<link rel='stylesheet' href='assets/css/articles.css'>"; 
echo "<link rel='stylesheet' href='assets/css/footer.css'>"; 
echo "</head>";
echo "<body>";

echo "<header>";
echo "<h1>Soniquete</h1>";
echo "<nav>";
echo "<ul>";
echo "<li><a href='index.html'>Home</a></li>";
echo "<li><a href='articles.php'>Articles</a></li>";
echo "<li><a href='artists.php'>Artists</a></li>";
echo "<li><a href='aboutus.html'>About Us</a></li>";
echo "</ul>";
echo "</nav>";
echo "</header>";

echo "<div class='articles-container'>";
echo "<h1>Articles</h1>";
echo "<div class='articles-grid'>";

while ($row = mysqli_fetch_assoc($result)) {
    echo "<div class='article'>";
    echo "<img src='" . $row['img'] . "' alt='" . $row['title'] . "'>";
    echo "<div class='article-content'>";
    echo "<h2><a href='article.php?id=" . $row['id'] . "'>" . $row['title'] . "</a></h2>";
    echo "<p>" . substr($row['content'], 0, 120) . "...</p>";
    echo "<a href='article.php?id=" . $row['id'] . "' class='read-more'>Read more</a>";
    echo "</div>";
    echo "</div>";
}

echo "</div>"; 
echo "</div>"; 

echo "<footer>";
echo "<p>&copy; 2025 Soniquete Digital Magazine. All Rights Reserved.</p>";
echo "</footer>";

echo "</body>";
echo "</html>";
?>
