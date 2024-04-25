<!DOCTYPE html>
<html>

<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="assets\css\styling.css">
</head>

<body>
    <div class="comment_wrapper">

        <?php 
        require 'config/config.php';
        include("includes/classes/User.php");
        include("includes/classes/Post.php");
        include("includes/classes/User2.php");

        $userLoggedIn = "";
        if (isset($_SESSION['username'])) {
            $userLoggedIn = $_SESSION['username'];
            $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
            $user = mysqli_fetch_array($user_details_query);
        }
        ?>

        <script>
            function toggle() {
                var element = document.getElementById("comment_section");

                if (element.style.display == "block")
                    element.style.display = "none";
                else
                    element.style.display = "block";
            }
        </script>

        <?php 
        //Get id of post
        if (isset($_GET['post_id'])) {
            $post_id = $_GET['post_id'];
        }

        $user_query = mysqli_query($con, "SELECT added_by, courseCode, user_to FROM posts WHERE id='$post_id'");
        $row = mysqli_fetch_array($user_query);

        $posted_to = isset($row['added_by']) ? $row['added_by'] : "";
        $courseCode = isset($row['courseCode']) ? $row['courseCode'] : "";
        $user_to = isset($row['user_to']) ? $row['user_to'] : "";

        if (isset($_POST['postComment' . $post_id])) {
            $post_body = isset($_POST['post_body']) ? mysqli_escape_string($con, $_POST['post_body']) : "";
            $date_time_now = date("Y-m-d H:i:s");
            $insert_post = mysqli_query($con, "INSERT INTO comments VALUES ('', '$post_body','$courseCode', '$userLoggedIn', '$posted_to', '$date_time_now', 'no', '$post_id')");
            
            if($posted_to != $userLoggedIn) {
                $notification = new User2($con, $userLoggedIn);
                $notification->insertNotification($post_id, $posted_to, "comment");
            }
            
            if($user_to != 'none' && $user_to != $userLoggedIn) {
                $notification = new User2($con, $userLoggedIn);
                $notification->insertNotification($post_id, $user_to, "classRoom_comment");
            }

            echo "<p style='text-align: center; margin: 0 0 0.5rem 0;'>Comment Posted! </p>";
        }
        ?>

        <form action="comment_frame.php?post_id=<?php echo $post_id; ?>" id="comment_form" name="postComment<?php echo $post_id; ?>" method="POST" autocomplete="off">
            <input type="text" name="post_body" placeholder="Add a comment">
            <input type="submit" name="postComment<?php echo $post_id; ?>" value="Post">
        </form>

        <!-- Load comments -->
        <?php 
        $get_comments = mysqli_query($con, "SELECT * FROM comments WHERE post_id='$post_id' ORDER BY id DESC");
        $count = mysqli_num_rows($get_comments);

        if ($count != 0) {
            while ($comment = mysqli_fetch_array($get_comments)) {
                $id = $comment['id'];
                $courseCode = isset($comment['courseCode']) ? $comment['courseCode'] : "";
                $comment_body = isset($comment['post_body']) ? $comment['post_body'] : "";
                $posted_by = isset($comment['posted_by']) ? $comment['posted_by'] : "";

                // Display the comment
                echo "<div class='comment_section'>";
                echo "<b>" . $posted_by . "</b>: " . $comment_body;
                echo "<hr>";
                echo "</div>";
            }
        } else {
            echo "<p style='text-align: center; margin-bottom:4rem;'>No Comments to Show!</p>";
        }
        ?>
    </div>
</body>

</html>
