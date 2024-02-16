<?php 
$fname = "";
$lname = "";
$em = "";
$em2 = "";
$password = "";
$password2 = "";
$date = "";
$error_array= array();
if(isset($_POST['register_button']))
{
    $fname = strip_tags($_POST['reg_fname']); 
    $fname = str_replace(' ', '', $fname); 
    $fname = ucfirst(strtolower($fname));
    $_SESSION['reg_fname'] = $fname;
    $lname = strip_tags($_POST['reg_lname']); 
    $lname = str_replace(' ', '', $lname); 
    $lname = ucfirst(strtolower($lname)); 
     $_SESSION['reg_lname'] = $lname;
    $em = strip_tags($_POST['reg_email']); 
    $em = str_replace(' ', '', $em); 
    $_SESSION['reg_email'] = $em;
     //email 2
    $em2 = strip_tags($_POST['reg_email2']); //remove html tag
    $em2 = str_replace(' ', '', $em2); //remove spaces
    $_SESSION['reg_email2'] = $em2;
      //password
    $password = strip_tags($_POST['reg_password']); //remove html tag
    $password2 = strip_tags($_POST['reg_password2']); //remove html tag
	 $date = date("Y-m-d"); //date
	 if($em == $em2){
            //check if email is in valid format
	 	if(filter_var($em, FILTER_VALIDATE_EMAIL)){
	 		$em = filter_var($em, FILTER_VALIDATE_EMAIL);
             //check if email already exsists
	 		$e_check = mysqli_query($con, "SELECT email FROM users WHERE email ='$em'");
             $num_rows = mysqli_num_rows($e_check);
             if($num_rows > 0){
               array_push($error_array, "Email already in use<br>") ;
             }
	 	}
        else{
          array_push($error_array, "Invalid email format<br>");
        }
      }
      else{
        array_push($error_array, "Email do not match<br>");
      }
    
    if($password != $password2){
     array_push($error_array, "Your password do not match<br>");
    }
     if(empty($error_array)){
       $password = md5($password); //Encrypt password before sending to database
       //Generate username by concatenating first name last name
       $username = strtolower($fname . "_" . $lname );
       $check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username = '$username'");
       $i = 0;
       // if username exsits add user number to username
       while (mysqli_num_rows($check_username_query) != 0) {
       	$i++;
       	$username = $username . "_" . $i;
       	$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username = '$username'");
       }
      $profile_pic = "assets/images/profilePics/deafultPP.png";
       $query = mysqli_query($con, "INSERT INTO users VALUES ('', '$fname', '$lname', '$username', '$em', '$password', '$profile_pic', '$date','no','','','')");
       array_push($error_array, "<span style = 'color: #14C800;'> You're all set! Goahead and login! </span> <br>");
       //Clear session variabel
       $_SESSION['reg_fname'] = "";
       $_SESSION['reg_lname'] = "";
       $_SESSION['reg_email'] = "";
       $_SESSION['reg_email2'] = "";
     }
}
?>