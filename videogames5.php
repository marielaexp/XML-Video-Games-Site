<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Games List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        nav {
            background-color: #444;
            padding: 10px;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px;
        }

        .game {
            width: 30%;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px;
            background-color: #fff;
            transition: background-color 0.3s ease-in-out;
        }

        .game:hover {
            background-color: #f0f0f0;
        }

        .game.high-rating {
            background-color: #ffdddd; 
        }

        h2 {
            color: #333;
            text-align: center;
            margin-top: 0;
        }

        p {
            margin: 5px;
            text-align: center;
        }

        img {
            display: block;
            margin: 0 auto;
            max-width: 100px;
            height: auto;
        }

        hr {
            border: none;
            height: 1px;
            background-color: #ddd;
            margin: 10px 0;
        }

        .search-container {
            text-align: center;
            margin-bottom: 20px;
        }

        input[type="text"] {
            padding: 8px;
            width: 200px;
        }

        input[type="submit"] {
            padding: 8px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <h1>simpleXML PHP - Search</h1>
    </header>
    <nav>
        <a href="videogames.xml">Home</a>
        <a href="videogames2.xml">List</a>
        <a href="videogames3.xml">Top rated</a>
        <a href="videogames4.xml">MathML</a>
        <a href="videogames5.php">simpleXML/PHP</a>
    </nav>

    <div class="search-container">
        <form action="" method="GET">
            <label for="search">Search: </label>
            <input type="text" id="search" name="search" placeholder="Enter game title">
            <input type="submit" value="Search">
        </form>
    </div>

    <div class="container">
    <?php

$xml = simplexml_load_file('videogames3.xml');

if (isset($_GET['search'])) {
    $searchQuery = strtolower($_GET['search']);
    $filteredGames = [];

    foreach ($xml->game as $game) {
        $title = strtolower($game->title);
        if (strpos($title, $searchQuery) !== false) {
            $filteredGames[] = $game;
        }
    }

    if (empty($filteredGames)) {
        echo '<p>No results found.</p>';
    } else {
        foreach ($filteredGames as $game) {
            $rating = (float)$game->rating;

            echo '<div class="game';
            if ($rating > 9.5) {
                echo ' high-rating';
            }
            echo '">';
            echo '<h2><a href="https://en.wikipedia.org/wiki/' . str_replace(' ', '_', $game->title) . '">' . $game->title . '</a></h2>';

            $genres = is_array($game->genres->genre) ? $game->genres->genre : [$game->genres->genre];
            echo '<p><strong>Genres:</strong> ' . implode(', ', $genres) . '</p>';

            echo '<p><strong>Rating:</strong> ' . $game->rating . '</p>';

            $releaseDate = $game->release_date->year . '-' . $game->release_date->month . '-' . $game->release_date->day;
            echo '<p><strong>Release Date:</strong> ' . $releaseDate . '</p>';

            $platforms = is_array($game->platforms->platform) ? $game->platforms->platform : [$game->platforms->platform];
            echo '<p><strong>Platforms:</strong> ' . implode(', ', $platforms) . '</p>';

            echo '<img src="' . $game->image . '" alt="' . $game->title . '">';

            echo '</div>';
            echo '<hr>';
        }
    }
} else {
    foreach ($xml->game as $game) {
        $rating = (float)$game->rating;

        echo '<div class="game';
        if ($rating > 9.5) {
            echo ' high-rating';
        }
        echo '">';
        echo '<h2><a href="https://en.wikipedia.org/wiki/' . str_replace(' ', '_', $game->title) . '">' . $game->title . '</a></h2>';

        $genres = is_array($game->genres->genre) ? $game->genres->genre : [$game->genres->genre];
        echo '<p><strong>Genres:</strong> ' . implode(', ', $genres) . '</p>';

        echo '<p><strong>Rating:</strong> ' . $game->rating . '</p>';

        $releaseDate = $game->release_date->year . '-' . $game->release_date->month . '-' . $game->release_date->day;
        echo '<p><strong>Release Date:</strong> ' . $releaseDate . '</p>';

        $platforms = is_array($game->platforms->platform) ? $game->platforms->platform : [$game->platforms->platform];
        echo '<p><strong>Platforms:</strong> ' . implode(', ', $platforms) . '</p>';

        echo '<img src="' . $game->image . '" alt="' . $game->title . '">';

        echo '</div>';
        echo '<hr>';
    }
}

?>
    </div>
</body>
</html>
