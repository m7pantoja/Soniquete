<?php
include 'config.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    
    $query = "SELECT * FROM articles WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $article = $result->fetch_assoc();

    if ($article) {
        echo "<!DOCTYPE html>";
        echo "<html lang='es'>";
        echo "<head>";
        echo "<meta charset='UTF-8'>";
        echo "<meta name='viewport' content='width=device-width, initial-scale=1.0'>";
        echo "<title>". $article['title'] ."</title>";
        echo "<link rel='stylesheet' href='assets/css/header.css'>"; 
        echo "<link rel='stylesheet' href='assets/css/article.css'>"; 
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

        echo "<div class='article-container'>";
        echo "<h1>" . $article['title'] . "</h1>";
        echo "<img src='" . $article['img'] . "' alt='" . $article['title'] . "'>";
        echo $article['content'];
        echo "<span class='author'>" . $article['author'] . "</span>";
        echo "<a href='articles.php' class='back-button'>← Back to Articles</a>";

        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['name']) && isset($_POST['comment'])) {
            $name = $_POST['name'];
            $comment = $_POST['comment'];
            
            if (!empty($name) && !empty($comment)) {
                $insertQuery = "INSERT INTO comments (article_id, name, comment) VALUES (?, ?, ?)";
                $stmt = $conn->prepare($insertQuery);
                $stmt->bind_param("iss", $id, $name, $comment);
                $stmt->execute();
            }
        }

        echo "<div class='comment-section'>";
        echo "<h2>Comments</h2>";

        $commentQuery = "SELECT name, comment, created_at FROM comments WHERE article_id = ? ORDER BY created_at DESC";
        $stmt = $conn->prepare($commentQuery);
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();

        echo "<div class='comments-list'>";
        while ($row = $result->fetch_assoc()) {
            echo "<div class='comment'>";
            echo "<strong>" . htmlspecialchars($row['name']) . "</strong>";
            echo "<p>" . htmlspecialchars($row['comment']) . "</p>";
            echo "<span class='comment-date'>" . $row['created_at'] . "</span>";
            echo "</div>";
        }
        echo "</div>";

        echo "<form action='article.php?id=$id' method='POST'>";
        echo "<input type='text' name='name' placeholder='Your name' required>";
        echo "<textarea name='comment' placeholder='Write your comment...' required></textarea>";
        echo "<button type='submit'>Send</button>";
        echo "</form>";

        echo "</div>";
        echo "</div>"; 

    } else {
        echo "<p>Article not found.</p>";
    }
    } else {
    echo "<p>Invalid application.</p>";
    }

    echo "<footer>";
    echo "<p>&copy; 2025 Soniquete Digital Magazine. All Rights Reserved.</p>";
    echo "</footer>";

    echo "</body>";
    echo "</html>";
?>
