<?php 
include("header.php");
$user_array = "";
$courseName = "";
$sec = "";
$body = "";
$post_id = "";
$searchedPost = "";
$classCode = $_GET['classCode'];
$user_details_query = mysqli_query($con, "SELECT * FROM createclass WHERE courseCode='$classCode'");
$user_array = mysqli_fetch_array($user_details_query);
$courseName = $user_array['className'];
$sec = $user_array['section'];
$classMates  = $user_array['student_array'];
$classMates = str_replace(',', ' ', $classMates);
$array = explode(" ", $classMates);
$classID = $user_array['id'];
$teacherName = $user_array['username'];
$user_details_query2 = mysqli_query($con, "SELECT * FROM users WHERE username='$teacherName'");
$teacherDetails = mysqli_fetch_array($user_details_query2);
if (isset($_POST['post'])) {
    $post = new Post($con, $userLoggedIn2, $classCode);
    $post->submitPost($_POST['post_text'], 'none', 'none', $teacherName);
}
if (isset($_GET['post_id'])) {
    $post_id = $_GET['post_id'];
    $data_query = mysqli_query($con, "SELECT body FROM posts WHERE id='$post_id'");
    $body = mysqli_fetch_array($data_query);
    echo '
	<script>
		$(document).ready(function(){
			$("#modal2").show();
		});
	</script>
	';
} 
if (isset($_POST['update'])) {
    $post = new Post($con, $userLoggedIn2, $classCode);
    $post->submitEditPost($_POST['editedPost_text'], $post_id);
    header("Location: classRoom.php?classCode=$classCode");
}
if (isset($_POST['cancel'])) {
    header("Location: classRoom.php?classCode=$classCode");
}
if (isset($_POST['upload'])) {
    $file = $_FILES['file'];
    $fileName = $_FILES['file']['name'];
    $fileSize = $_FILES['file']['size'];
    $fileType = $_FILES['file']['type'];
    $fileTmpName = $_FILES['file']['tmp_name'];
    $fileError = $_FILES['file']['error'];
    $fileExt = explode('.', $fileName);
    $fileActualExt = strtolower(end($fileExt));
    $allowed  = array('jpg', 'jpeg', 'png', 'pdf', 'docx', 'doc', 'xlsx', 'pptx', 'ppt');
    $res = str_replace($allowed, "", $fileName);
    if (in_array($fileActualExt, $allowed)) {
        if ($fileError === 0) {
            if ($fileSize < 1000000000000) {
                $fileNameNew = uniqid(" ", true) . "." . $fileActualExt;
                $fileDestination = 'uploads/' . $res . $fileNameNew;
                move_uploaded_file($fileTmpName, $fileDestination); 
                $post = new Post($con, $userLoggedIn, $classCode);
                $post->submitPost($_POST['assignment_text'], $fileNameNew, $fileDestination,$teacherName);
                header("Location: classRoom.php?classCode=$classCode&uploadsuccess");
            } else {
                echo "your file is too big";
            }
        } else {
            echo "Error uploading your file!  ";
        }
    } else {
        echo "You can't upload file of this";
    }
}
if (isset($_GET['uploadsuccess'])) {
    echo '<script>
                     $(document).ready(function(){
                         $("#first").hide();
                         $("#second").show();
                       });
                       </script>
                       ';
}
if(isset($_POST['search__btn'])){
    $searchedPost = $_POST['searched_text'];
    header("Location: search.php?classCode=$classCode&searchedPost=$searchedPost");
}
?>
<div class=Wrapper2>
    <div class="user_details cloumn">
        <h1> <?php echo $courseName ?></h1>
        <p style='line-height:30px; display: inline-block;'>Section: <?php echo $sec ?>
            <br>
            Class code: <?php echo $classCode ?><span id="code_expand"><i class="fas fa-expand"></i></span>
        </p>
        <form action="" method="POST" class="search__form">
                <input type="text" placeholder='Search posts' autocomplete='off'  id='search-bar' name='searched_text'><button id="search__btn" name="search__btn"><i class="fas fa-search"></i></button>
        </form> 
        <div class="assignment_box">
        </div>
    </div>
    <div id="modal">
        <div id="modal_container">
            <span id="close_btn">&times;</span>
            <p id="code_modal"><?php echo $classCode ?></p>
        </div>
    </div>
    <div id="modal2">
        <div id="modal_bg"></div>
        <div id="edit_box">
            <form class="edit_form" method="POST">
                <textarea name="editedPost_text" id="edit_textarea"><?php echo $body; ?></textarea>
                <a href="classRoom.php?classCode=$classCode"><input type="submit" name="cancel" value="Cancel" class="edit_box_btn" id="update_cancel_btn"></a>
                <input type="submit" name="update" value="Update" class="edit_box_btn" id="update_btn">
            </form>
        </div>
    </div>
    <div class="people_column">
       <h4>Instructor:</h4><a href="<?php echo $teacherName; ?>"><img src='<?php echo $teacherDetails['profilePic'] ?>' width='50'><?php echo $teacherDetails['first_name'] . " " . $teacherDetails['last_name'] ?></a>
        <br>
        <!-- <?php echo "Posts: " . $user_array['num_posts'] . "<br>"; ?> -->
        <?php 
        $stundentsName  = new User($con, $classCode ,$userLoggedIn);
        echo "<p>Classmates: </p>"; ?>
             <?php $stundentsName->getStudentsUserName($array) ?>
    </div>
        <div id="second">
            <form class="assignment_form" method="POST" enctype="multipart/form-data">
                <input type="file" name="file" id="fileToUpload">
                <textarea name='assignment_text' id='assignment-textarea' placeholder='Type here'></textarea>
                <a href='classRoom.php?classCode=$courseCode'><input type='submit' name='upload' id='assignment-upload-button' value='Upload'></a>
                <hr>
            </form>
            <?php
            $post = new Post($con, $userLoggedIn, $classCode);
            $post->loadFiles();
            ?>
        </div>
    </div>
</div>
<script>
    var expandBtn = document.getElementById('code_expand');
    var modal = document.getElementById("modal");
    var closeBtn = document.getElementById("close_btn");
    expandBtn.addEventListener('click', openModal);
    closeBtn.addEventListener('click', closeModal);
    window.addEventListener('click', clickOutsideModal);
    function openModal() {
        modal.style.display = 'block';
    }
    function closeModal() {
        modal.style.display = 'none';
    }
    function clickOutsideModal(e) {
        if (e.target == modal) {
            modal.style.display = 'none';
        }
    }
    let editBtn = document.getElementsByClassName('edit_post_btn');
    let modal2 = document.getElementById("modal2");
    let updateBtn = document.getElementById("update_btn");
    let cancelBtn = document.getElementById('update_cancel_btn');
    updateBtn.addEventListener('click', closeModal2);
    function closeModal2() {
        modal.style.display = 'none';
    }
    $(document).ready(function() {
        $('edit_post_btn').click(function() {
            modal2.style.display = 'block';
        });
    });
    $(document).ready(function() {
        $("#assignmentBtn").click(function() { 
            $("#first").slideUp("slow", function() {
                $("#second").slideDown("slow");
            });
        });
        $("#postBtn").click(function() {
            $("#second").slideUp("slow", function() { 
                $("#first").slideDown("slow");
            });
        });
    });
</script>
</body>

</html> 