<?php

include "db.php";

$results = null;

if (isset($_GET['genre'])) {

    $genre = $_GET['genre'];

    $stmt = $conn->prepare(
        "SELECT * FROM content WHERE genre = ?"
    );

    $stmt->bind_param("s", $genre);

    $stmt->execute();

    $results = $stmt->get_result();
}

?>

<!DOCTYPE html>
<html>

<head>

    <title>CinePick - Recommend</title>

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

<div class="container">

    <div class="recommend-box">

        <h1>🎬 Find Something to Watch</h1>

        <p>
            Select your favorite genre.
        </p>

        <form method="GET">

            <select name="genre" required>

                <option value="">Select Genre</option>

                <option value="Action">Action</option>

                <option value="Comedy">Comedy</option>

                <option value="Romance">Romance</option>

                <option value="Horror">Horror</option>

                <option value="Thriller">Thriller</option>

            </select>

            <button type="submit" class="btn">
                Recommend
            </button>

        </form>

    </div>

    <?php if ($results !== null) { ?>

        <h2 class="section-title">
            Recommendations
        </h2>

        <div class="card-container">

            <?php

            if ($results->num_rows > 0) {

                while ($row = $results->fetch_assoc()) {

            ?>

            <div class="card">

                <img
                    src="<?php echo $row['image']; ?>"
                    alt="<?php echo $row['title']; ?>"
                >

                <div class="card-content">

                    <h3>
                        <?php echo $row['title']; ?>
                    </h3>

                    <p class="genre">
                        <?php echo $row['genre']; ?>
                    </p>

                    <p class="rating">
                        ⭐ <?php echo $row['rating']; ?>/10
                    </p>

                    <p>
                        <?php echo $row['description']; ?>
                    </p>

                    <p>
                        <br>
                        <?php echo $row['type']; ?>
                        •
                        <?php echo $row['release_year']; ?>
                    </p>

                </div>

            </div>

            <?php

                }

            } else {

                echo "<p>No recommendations found.</p>";

            }

            ?>

        </div>

    <?php } ?>

</div>

<footer>
    © 2026 CinePick
</footer>

</body>

</html>