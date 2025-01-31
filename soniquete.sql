-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-01-2025 a las 04:31:53
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soniquete`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `content`, `img`, `created_at`) VALUES
(1, 'Yerai Cortés and C Tangana present an Album through a Controversial Documentary', 'Mario Pantoja', '<p>Flamenco has always been more than music—it is a living history, a lament and a celebration, a force that carries the weight of generations. Few artists embody this truth as profoundly as <strong><em>Yerai Cortés</em></strong>, whose artistry has made him one of the most captivating guitarists of his generation. Now, in 2024, his story takes center stage in \"<em>La Guitarra Flamenca de Yerai Cortés</em>\", a documentary directed by <strong><em>Antón Álvarez</em></strong>, better known as <strong><em>C. Tangana</em></strong>. This collaboration between two visionaries—one rooted in the traditions of flamenco, the other in the boundary-breaking currents of contemporary Spanish music—results in a film that is as personal as it is universal, delving into Cortés’ life, his music, and the profound emotional landscapes that both shape and are shaped by his guitar.</p>\r\n\r\n<h2>A Documentary That Strikes a Chord</h2>\r\n\r\n<p><em>La Guitarra Flamenca de Yerai Cortés</em> is not just a biographical film; it is an intimate meditation on music, family, and personal healing. Through a mixture of candid interviews, immersive performances, and poetic storytelling, the film explores Cortés’ family history, his personal struggles, and the way music has served as both a refuge and a battlefield.</p>\r\n\r\n<p>We see Cortés confronting past wounds, seeking reconciliation through art, and ultimately transcending his own pain through the strings of his guitar. The documentary captures the duality of flamenco—its joy and its sorrow, its spontaneity and its discipline—mirroring the contradictions in Cortés’ own life.</p>\r\n\r\n<p>Premiering at the <strong>72nd San Sebastián International Film Festival</strong> in September 2024, the film was met with overwhelming praise, with critics lauding its authenticity, emotional depth, and innovative approach to the traditional music documentary. It was also showcased at the <strong>69th Valladolid International Film Festival</strong> and is scheduled for an international premiere at the <strong>54th International Film Festival Rotterdam</strong> on February 2, 2025.</p>\r\n\r\n<p><strong><em>Júlia Olmo</em></strong> of <strong><em>Cineuropa</em></strong> called it a \"dazzling and powerful directorial debut,\" emphasizing how C. Tangana’s storytelling elevates the documentary beyond mere biography and into the realm of poetic cinema. It is a film that does not merely tell a story—it feels its way through it, much like a great flamenco performance.</p>\r\n\r\n<h2>The Album: A Soundtrack of the Soul</h2>\r\n\r\n<p>Accompanying the documentary is <strong><em>Yerai Cortés</em></strong>’ self-titled album, <em>La Guitarra Flamenca de Yerai Cortés</em>, a 16-track masterpiece that serves as both a companion to the film and a statement of its own.</p>\r\n\r\n<p>While the documentary reveals the man behind the music, the album reveals the music behind the man. Each piece reflects a different shade of Cortés’ soul, from the haunting depth of soleás to the fiery passion of bulerías. The guitar, in his hands, does not merely play—it speaks, sighs, and even weeps.</p>\r\n\r\n<h3>Notable tracks include:</h3>\r\n\r\n<ul>\r\n  <li><em>LA PLAZA ARGEL</em> – A bulería full of fire and urgency, where Cortés’ strings dance between tradition and reinvention.</li>\r\n  <li><em>POR TU SILENCIO LLORO</em> – A taranta that captures the ghostly beauty of Andalucía’s eastern landscapes, its notes drifting like wind across desert plains.</li>\r\n  <li><em>LOS ALMENDROS</em> – A deeply rhythmic tango, where every stroke of the strings feels like a heartbeat, pulsating with both pain and hope.</li>\r\n  <li><em>LOS GITANOS SONAMOS ASÍ</em> – A collaboration with flamenco’s new wave, blending urban textures with flamenco’s ancestral pulse, showing that Yerai’s music belongs both to the past and the future.</li>\r\n</ul>\r\n\r\n\r\n<p>While deeply rooted in flamenco tradition, the album subtly incorporates modern influences, making it a bridge between flamenco purists and new audiences. Much like the documentary, it invites listeners to experience flamenco not as a relic, but as a living, breathing force.</p>\r\n\r\n<h2>A Testament to the Power of Music</h2>\r\n\r\n<p>Together, the film and album create an immersive experience that transcends genres and generations. They reaffirm that flamenco is not merely a tradition to be preserved, but a force to be felt, lived, and redefined. <strong><em>Yerai Cortés</em></strong> does not seek to reinvent flamenco—he simply inhabits it so fully that it evolves in his hands.</p>\r\n\r\n<p>In <em>La Guitarra Flamenca de Yerai Cortés</em>, music is both the wound and the cure. It is a space where trauma meets transcendence, where suffering finds solace, and where past and future embrace.</p>\r\n\r\n<p>For those who listen closely, there is more than music here. There are stories, whispered through the strings. There are echoes of the past and promises for the future. And, above all, there is the unmistakable sound of a heart beating in rhythm with its destiny.</p>', 'assets/images/article1.jpg', '2025-01-26 17:30:29'),
(2, 'The History of Flamenco', 'Mario Pantoja Castro', 'Flamenco has deep roots in Andalusian culture...', 'assets/images/article2.jpg', '2025-01-26 17:30:29'),
(3, 'Article 3', 'Mario Pantoja', '<p>Flamenco has always been more than music—it is a living history, a lament and a celebration, a force that carries the weight of generations. Few artists embody this truth as profoundly as <strong><em>Yerai Cortés</em></strong>, whose artistry has made him one of the most captivating guitarists of his generation. Now, in 2024, his story takes center stage in \"<em>La Guitarra Flamenca de Yerai Cortés</em>\", a documentary directed by <strong><em>Antón Álvarez</em></strong>, better known as <strong><em>C. Tangana</em></strong>. This collaboration between two visionaries—one rooted in the traditions of flamenco, the other in the boundary-breaking currents of contemporary Spanish music—results in a film that is as personal as it is universal, delving into Cortés’ life, his music, and the profound emotional landscapes that both shape and are shaped by his guitar.</p>\r\n\r\n<h2>A Documentary That Strikes a Chord</h2>\r\n\r\n<p><em>La Guitarra Flamenca de Yerai Cortés</em> is not just a biographical film; it is an intimate meditation on music, family, and personal healing. Through a mixture of candid interviews, immersive performances, and poetic storytelling, the film explores Cortés’ family history, his personal struggles, and the way music has served as both a refuge and a battlefield.</p>\r\n\r\n<p>We see Cortés confronting past wounds, seeking reconciliation through art, and ultimately transcending his own pain through the strings of his guitar. The documentary captures the duality of flamenco—its joy and its sorrow, its spontaneity and its discipline—mirroring the contradictions in Cortés’ own life.</p>\r\n\r\n<p>Premiering at the <strong>72nd San Sebastián International Film Festival</strong> in September 2024, the film was met with overwhelming praise, with critics lauding its authenticity, emotional depth, and innovative approach to the traditional music documentary. It was also showcased at the <strong>69th Valladolid International Film Festival</strong> and is scheduled for an international premiere at the <strong>54th International Film Festival Rotterdam</strong> on February 2, 2025.</p>\r\n\r\n<p><strong><em>Júlia Olmo</em></strong> of <strong><em>Cineuropa</em></strong> called it a \"dazzling and powerful directorial debut,\" emphasizing how C. Tangana’s storytelling elevates the documentary beyond mere biography and into the realm of poetic cinema. It is a film that does not merely tell a story—it feels its way through it, much like a great flamenco performance.</p>\r\n\r\n<h2>The Album: A Soundtrack of the Soul</h2>\r\n\r\n<p>Accompanying the documentary is <strong><em>Yerai Cortés</em></strong>’ self-titled album, <em>La Guitarra Flamenca de Yerai Cortés</em>, a 16-track masterpiece that serves as both a companion to the film and a statement of its own.</p>\r\n\r\n<p>While the documentary reveals the man behind the music, the album reveals the music behind the man. Each piece reflects a different shade of Cortés’ soul, from the haunting depth of soleás to the fiery passion of bulerías. The guitar, in his hands, does not merely play—it speaks, sighs, and even weeps.</p>\r\n\r\n<h3>Notable tracks include:</h3>\r\n\r\n<ul>\r\n  <li><em>LA PLAZA ARGEL</em> – A bulería full of fire and urgency, where Cortés’ strings dance between tradition and reinvention.</li>\r\n  <li><em>POR TU SILENCIO LLORO</em> – A taranta that captures the ghostly beauty of Andalucía’s eastern landscapes, its notes drifting like wind across desert plains.</li>\r\n  <li><em>LOS ALMENDROS</em> – A deeply rhythmic tango, where every stroke of the strings feels like a heartbeat, pulsating with both pain and hope.</li>\r\n  <li><em>LOS GITANOS SONAMOS ASÍ</em> – A collaboration with flamenco’s new wave, blending urban textures with flamenco’s ancestral pulse, showing that Yerai’s music belongs both to the past and the future.</li>\r\n</ul>\r\n\r\n\r\n<p>While deeply rooted in flamenco tradition, the album subtly incorporates modern influences, making it a bridge between flamenco purists and new audiences. Much like the documentary, it invites listeners to experience flamenco not as a relic, but as a living, breathing force.</p>\r\n\r\n<h2>A Testament to the Power of Music</h2>\r\n\r\n<p>Together, the film and album create an immersive experience that transcends genres and generations. They reaffirm that flamenco is not merely a tradition to be preserved, but a force to be felt, lived, and redefined. <strong><em>Yerai Cortés</em></strong> does not seek to reinvent flamenco—he simply inhabits it so fully that it evolves in his hands.</p>\r\n\r\n<p>In <em>La Guitarra Flamenca de Yerai Cortés</em>, music is both the wound and the cure. It is a space where trauma meets transcendence, where suffering finds solace, and where past and future embrace.</p>\r\n\r\n<p>For those who listen closely, there is more than music here. There are stories, whispered through the strings. There are echoes of the past and promises for the future. And, above all, there is the unmistakable sound of a heart beating in rhythm with its destiny.</p>', 'assets/images/article3.jpg', '2025-01-26 17:30:29'),
(4, 'Article 4', 'Mario Pantoja', '<p>Flamenco has always been more than music—it is a living history, a lament and a celebration, a force that carries the weight of generations. Few artists embody this truth as profoundly as <strong><em>Yerai Cortés</em></strong>, whose artistry has made him one of the most captivating guitarists of his generation. Now, in 2024, his story takes center stage in \"<em>La Guitarra Flamenca de Yerai Cortés</em>\", a documentary directed by <strong><em>Antón Álvarez</em></strong>, better known as <strong><em>C. Tangana</em></strong>. This collaboration between two visionaries—one rooted in the traditions of flamenco, the other in the boundary-breaking currents of contemporary Spanish music—results in a film that is as personal as it is universal, delving into Cortés’ life, his music, and the profound emotional landscapes that both shape and are shaped by his guitar.</p>\r\n\r\n<h2>A Documentary That Strikes a Chord</h2>\r\n\r\n<p><em>La Guitarra Flamenca de Yerai Cortés</em> is not just a biographical film; it is an intimate meditation on music, family, and personal healing. Through a mixture of candid interviews, immersive performances, and poetic storytelling, the film explores Cortés’ family history, his personal struggles, and the way music has served as both a refuge and a battlefield.</p>\r\n\r\n<p>We see Cortés confronting past wounds, seeking reconciliation through art, and ultimately transcending his own pain through the strings of his guitar. The documentary captures the duality of flamenco—its joy and its sorrow, its spontaneity and its discipline—mirroring the contradictions in Cortés’ own life.</p>\r\n\r\n<p>Premiering at the <strong>72nd San Sebastián International Film Festival</strong> in September 2024, the film was met with overwhelming praise, with critics lauding its authenticity, emotional depth, and innovative approach to the traditional music documentary. It was also showcased at the <strong>69th Valladolid International Film Festival</strong> and is scheduled for an international premiere at the <strong>54th International Film Festival Rotterdam</strong> on February 2, 2025.</p>\r\n\r\n<p><strong><em>Júlia Olmo</em></strong> of <strong><em>Cineuropa</em></strong> called it a \"dazzling and powerful directorial debut,\" emphasizing how C. Tangana’s storytelling elevates the documentary beyond mere biography and into the realm of poetic cinema. It is a film that does not merely tell a story—it feels its way through it, much like a great flamenco performance.</p>\r\n\r\n<h2>The Album: A Soundtrack of the Soul</h2>\r\n\r\n<p>Accompanying the documentary is <strong><em>Yerai Cortés</em></strong>’ self-titled album, <em>La Guitarra Flamenca de Yerai Cortés</em>, a 16-track masterpiece that serves as both a companion to the film and a statement of its own.</p>\r\n\r\n<p>While the documentary reveals the man behind the music, the album reveals the music behind the man. Each piece reflects a different shade of Cortés’ soul, from the haunting depth of soleás to the fiery passion of bulerías. The guitar, in his hands, does not merely play—it speaks, sighs, and even weeps.</p>\r\n\r\n<h3>Notable tracks include:</h3>\r\n\r\n<ul>\r\n  <li><em>LA PLAZA ARGEL</em> – A bulería full of fire and urgency, where Cortés’ strings dance between tradition and reinvention.</li>\r\n  <li><em>POR TU SILENCIO LLORO</em> – A taranta that captures the ghostly beauty of Andalucía’s eastern landscapes, its notes drifting like wind across desert plains.</li>\r\n  <li><em>LOS ALMENDROS</em> – A deeply rhythmic tango, where every stroke of the strings feels like a heartbeat, pulsating with both pain and hope.</li>\r\n  <li><em>LOS GITANOS SONAMOS ASÍ</em> – A collaboration with flamenco’s new wave, blending urban textures with flamenco’s ancestral pulse, showing that Yerai’s music belongs both to the past and the future.</li>\r\n</ul>\r\n\r\n\r\n<p>While deeply rooted in flamenco tradition, the album subtly incorporates modern influences, making it a bridge between flamenco purists and new audiences. Much like the documentary, it invites listeners to experience flamenco not as a relic, but as a living, breathing force.</p>\r\n\r\n<h2>A Testament to the Power of Music</h2>\r\n\r\n<p>Together, the film and album create an immersive experience that transcends genres and generations. They reaffirm that flamenco is not merely a tradition to be preserved, but a force to be felt, lived, and redefined. <strong><em>Yerai Cortés</em></strong> does not seek to reinvent flamenco—he simply inhabits it so fully that it evolves in his hands.</p>\r\n\r\n<p>In <em>La Guitarra Flamenca de Yerai Cortés</em>, music is both the wound and the cure. It is a space where trauma meets transcendence, where suffering finds solace, and where past and future embrace.</p>\r\n\r\n<p>For those who listen closely, there is more than music here. There are stories, whispered through the strings. There are echoes of the past and promises for the future. And, above all, there is the unmistakable sound of a heart beating in rhythm with its destiny.</p>', 'assets/images/article4.jpg', '2025-01-26 17:30:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `article_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `name`, `comment`, `created_at`) VALUES
(1, 1, 'Paco', 'hola', '2025-01-30 19:18:49'),
(2, 1, 'Paco', 'hola', '2025-01-30 19:19:10'),
(3, 1, 'MF', 'MARIO', '2025-01-31 01:58:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
