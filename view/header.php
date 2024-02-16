<?php 
require 'config/config.php' ;
require 'includes/form_handlers/createJoinClass_handler.php';
include("includes/classes/User.php");
include("includes/classes/User2.php");
include("includes/classes/Post.php");
   if(isset($_SESSION['username'])){
		 $userLoggedIn  = $_SESSION['username'];
		 $userLoggedIn2  = $_SESSION['username'];
		 $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username = '$userLoggedIn'");
		 $user_details_query2 = mysqli_query($con, "SELECT * FROM createclass WHERE username = '$userLoggedIn2' ORDER BY id DESC");
		 $user = mysqli_fetch_array($user_details_query);
		 $user2 = mysqli_fetch_array($user_details_query2);
   }
   else{
   	header("Location:register.php");
   }
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>BrainBox</title>

	<!-- javaScripts -->
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
			<script src="assets\js\createJoinClass.js"></script>
			<script src="assets/js/demo.js"></script>
			<script src="assets/js/jquery.jcrop.js"></script>
	    <script src="assets/js/jcrop_bits.js"></script>

	<!-- css -->
	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="assets\css\styling.css">
		<link rel="stylesheet" href="assets/css/jquery.Jcrop.css" >
</head>

<body>
  <div class="background"></div>
	<div class="top_bar">
		<div class="logo">
			<a href="index.php" style="text-decoration: none">BrainBox</a>
		</div>
             <div class="icon">
					<nav>
						<?php 
							//Unread notifications 
							$notifications = new User2($con, $userLoggedIn);
							$num_notifications = $notifications->getUnreadNumber();
						?>
					<a href="<?php echo $userLoggedIn; ?>">
									<?php echo $user['first_name'] ?>
									<span class="tooltiptext">Profile</span>
					</a>
					<a href="index.php"><i class="fas fa-home"></i>
							<span class="tooltiptext">Home</span>
							</a>
					
							<!-- <a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'notification')"><i class="fas fa-bell"></i>  
								<?php
								if($num_notifications > 0)
								echo '<span class="notification_badge" id="unread_notification">' . $num_notifications . '</span>';
								?>
							<span class="tooltiptext">Notifications</span>
							</a> -->
					<a href="createJoinClass.php"><i class="fas fa-plus"></i>
							<span class="tooltiptext">Create or Join Class</span>
							</a>
							<a href="includes/handlers/logout.php">
							<i class="fas fa-sign-out-alt"></i>
							<span class="tooltiptext">Sign Out</span>
							</a>

				</nav>
				
				</div>
			
			</div>
	

			<meta content="" name="descriptison">
  <meta content="" name="keywords">

  

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="assets/font-awesome/css/all.min.css">


  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
  <link href="assets/DataTables/datatables.min.css" rel="stylesheet">


  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="assets/css/jquery-te-1.4.0.css">
  
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/DataTables/datatables.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="assets/font-awesome/js/all.min.js"></script>
  <script type="text/javascript" src="assets/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>



