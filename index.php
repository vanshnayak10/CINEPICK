<!DOCTYPE html>
<html>
<head>
    <title>CinePick - Home</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<nav>
    <div class="logo">CinePick</div>

    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="movies.php">Movies</a></li>
        <li><a href="series.php">Series</a></li>
        <li><a href="recommend.php">Recommend</a></li>
        <li><a href="about.php">About</a></li>
    </ul>
</nav>

<section class="hero">

    <h1>Welcome to <span>CinePick</span></h1>

    <p>
        Find your next favorite movie or series.
    </p>

    <a href="recommend.php" class="btn">
        Get Recommendations
    </a>

</section>

<div class="container">

    <h2 class="section-title">
        What are you watching today?
    </h2>

    <div class="card-container">

        <div class="card">
            <div class="card-content">
                <h3>🎬 Movies</h3>
                <p>
                    Explore exciting movies from different genres.
                </p>
                <br>
                <a href="movies.php" class="btn">Explore Movies</a>
            </div>
        </div>

        <div class="card">
            <div class="card-content">
                <h3>📺 Series</h3>
                <p>
                    Discover interesting series for your next binge-watch.
                </p>
                <br>
                <a href="series.php" class="btn">Explore Series</a>
            </div>
        </div>

        <div class="card">
            <div class="card-content">
                <h3>⭐ Recommendations</h3>
                <p>
                    Select a genre and CinePick will find matching titles.
                </p>
                <br>
                <a href="recommend.php" class="btn">Recommend</a>
            </div>
        </div>

    </div>

</div>

<footer>
    © 2026 CinePick | Movie & Series Recommendation System
</footer>

<script src="script.js"></script>

</body>
</html>