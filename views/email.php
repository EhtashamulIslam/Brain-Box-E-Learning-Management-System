<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Email Form</title>
    <link rel="stylesheet" href="assets\css\styles.css">
    <link rel="stylesheet" href="assets\css\animations.css">
</head>
<body>
    <div class="container">
        <h2>Contact Us</h2>
        <?php
        $error = "";
        $success = "";

        if(isset($_POST['submit'])){
            $to = $_POST['temail'];
            $from = $_POST['femail'];
            $fname = $_POST['fname'];
            $lname = $_POST['lname'];
            $message = $fname . " " . $lname . "\n";
            $message .= "Rating: " . $_POST['rating'] . "/10\n";
            $message .= "User Type: " . $_POST['user_type'] . "\n";
            $message .= $_POST['message'];

            if(!filter_var($to, FILTER_VALIDATE_EMAIL)){
                $error .= "Please enter a correct email address for the recipient.<br>";
            }

            if(!filter_var($from, FILTER_VALIDATE_EMAIL)){
                $error .= "Please enter a correct email address for the sender.<br>";
            }

            if(empty($fname) || empty($lname)){
                $error .= "Please enter your first and last name.<br>";
            }

            if(empty($_POST['message'])){
                $error .= "Please enter a message.<br>";
            }

            if(empty($error)){
                $message = wordwrap($message, 70);
                $header = "From: " . $from;
                $subject = "Form Submission";
                if(mail($to, $subject, $message, $header)){
                    $success = "Your message has been sent successfully!";
                } else {
                    $error = "Failed to send email. Please try again later.";
                }
            }
        }
        ?>
        <form action="emailone.php" method="post">
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="fname" placeholder="First Name" value="<?php echo isset($_POST['fname']) ? $_POST['fname'] : ''; ?>">
                        <input type="text" name="lname" placeholder="Last Name" value="<?php echo isset($_POST['lname']) ? $_POST['lname'] : ''; ?>">
                    </td>
                </tr>
                <tr>
                    <td>To:</td>
                    <td><input type="email" name="temail" placeholder="example@example.com" value="<?php echo isset($_POST['temail']) ? $_POST['temail'] : ''; ?>"></td>
                </tr>
                <tr>
                    <td>From:</td>
                    <td><input type="email" name="femail" placeholder="example@example.com" value="<?php echo isset($_POST['femail']) ? $_POST['femail'] : ''; ?>"></td>
                </tr>
                <tr>
                    <td>Rating:</td>
                    <td>
                        <select name="rating">
                            <?php for($i = 1; $i <= 10; $i++) { ?>
                                <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                            <?php } ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>User Type:</td>
                    <td>
                        <input type="radio" name="user_type" value="Student" checked> Student
                        <input type="radio" name="user_type" value="Teacher"> Teacher
                    </td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><textarea name="message" rows="5" cols="40" placeholder="Enter your message here"><?php echo isset($_POST['message']) ? $_POST['message'] : ''; ?></textarea></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="Send"></td>
                </tr>
            </table>
        </form>

        <?php
        if($error){
            echo '<div class="error">' . $error . '</div>';
        }

        if($success){
            echo '<div class="success">' . $success . '</div>';
        }
        ?>
    </div>
    <script src="assets\js\animations.js"></script>
</body>
</html>
