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
        echo "<link rel='stylesheet' href='assets/css/article.css'>"; 
        echo "<div class='article-container'>";
        echo "<h1>" . $article['title'] . "</h1>";
        echo "<img src='" . $article['img'] . "' alt='" . $article['title'] . "'>";
        echo "<p>" . $article['content'] . "</p>";
        echo "<a href='articles.php' class='back-button'>← Volver a Articulos</a>";

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
        echo "<h2>Comentarios</h2>";
        echo "<form action='article.php?id=$id' method='POST'>";
        echo "<input type='text' name='name' placeholder='Tu nombre' required>";
        echo "<textarea name='comment' placeholder='Escribe tu comentario...' required></textarea>";
        echo "<button type='submit'>Enviar</button>";
        echo "</form>";

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

        echo "</div>";
        echo "</div>"; 
    } else {
        echo "<p>Artículo no encontrado.</p>";
    }
} else {
    echo "<p>Solicitud inválida.</p>";
}
?>
