
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>Log In</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
		integrity="sha256-+N4/V/SbAFiW1MPBCXnfnP9QSN3+Keu+NlB+0ev/YKQ=" crossorigin="anonymous" />
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet" />
	<link rel="stylesheet" href="<?php echo get_template_directory_uri() . '/css/authentication.css' ?>" />
</head>

<body>
	<div class="header-container">
		<h1 class="school-logo-text float-left"><a href="<?php echo site_url(); ?>"><strong>Gurudoyal</strong>
				University</a></h1>
	</div>
	<div class="container">
		<div class="card">
					<!-- /*
=================================
Sign in form starts here
=================================
 */ -->
			<div class="front">
				<h4 class="error">
				</h4>
				<div class="top-sec">
					<h1>sign in</h1>
					<img src="<?php echo get_theme_file_uri('/images/avatar.png') ?>" alt="avatar" />
				</div>
				<form id="login" method="POST">
					<div class="input-wrapper">
						<label class="icon"><i class="fas fa-user"></i></label>
						<input value="<?php
if (isset($_COOKIE['username'])) {
    echo $_COOKIE['username'];
} else {
    echo "";
}
?>" name="email" type="text" placeholder="Enter your username/email" required />
					</div>
					<br />
					<div class="input-wrapper">
						<label class="icon"><i class="fas fa-key"></i></label>
						<input value="<?php
if (isset($_COOKIE['psw'])) {
    echo $_COOKIE['psw'];
} else {
    echo "";
}
?>" name="psw" type="password" placeholder="Enter your password" required />
					</div>
					<br />
					<input  class="login" type="submit" value="log in" name="log-in" /> <br />
					<div class="bottom-sec">
						<div class="checkbox">
							<input <?php
if (isset($_COOKIE['checkbox'])) {
    echo "checked";
} else {
    echo "";
}
?> name="checkbox" type="checkbox" /> <span>Remember me</span>
						</div>
						<span class="spn signin">Create an account</span>
					</div>
				</form>
			</div>
			<!-- /*
=================================
Sign up form starts here
=================================
 */ -->

			<div class="back">
			<h4 class="error">
				</h4>
				<div class="top-sec">
					<h1>Create account</h1>
				</div>
				<form id="sign-up" class="sign-up">
					<div class="name-wrapper">
						<div>
							<label for="fname">Firstname:</label> <br />
							<input name="f_name" class="s-name" type="text" required placeholder="firstname" />
						</div>
						<div>
							<label for="lname">Lastname:</label> <br />
							<input name="l_name" class="s-name" type="text" required placeholder="lastname" />
						</div>
					</div>
					<br />
					<label for="mail">Username:</label>
					<input name="username" class="s-name" type="text" required placeholder="enter your email" />
					<br />
					<label for="mail">Email:</label>
					<br />
					<input name="user_email" class="s-name" type="email" required placeholder="enter your email" />
					<br />
					<label for="mail">Password:</label> <br />
					<input name="user_psw" class="s-name" type="password" required placeholder="enter your password" />
					<br />
					<input id="signup" name="register" type="submit" value="sign up" /> <br />
					<span class="spn signup">or Sign In</span>
				</form>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"
		integrity="sha256-lPE3wjN2a7ABWHbGz7+MKBJaykyzqCbU96BJWjio86U=" crossorigin="anonymous"></script>
	<script src="<?php echo get_template_directory_uri() . '/js/authentication.js' ?>"></script>
	<script src="https://code.jquery.com/jquery-3.5.0.min.js"
		integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function () {
					/*
=================================
functionality for login form
=================================
 */
			$('#login').on('submit', function (e) {
				e.preventDefault();
				var admin_url = "<?php echo admin_url('admin-ajax.php') ?>"
				var form_data = $(this).serialize();
				form_data += '&action=custom_login&param=login_test';
				$.when(
					$.ajax({
						url: admin_url,
						type: 'POST',
						data: form_data
					})
				).then((response) => {
					if (response === "") {
						$('.error').html('Successfully Logged In').hide().slideDown(600);
						setTimeout(() => {
							window.location = '<?php echo site_url() ?>'
						}, 1000);
					} else {
						$('.error').html(response).hide().slideDown();
						setTimeout(() => {
							$('.error').slideUp(600);
						}, 3000);
						$('input').not('.login, #signup').val("")
					}
				}, error => {
					console.log(error);
				})
			});
						/*
=================================
functionality for sign up form
=================================
 */
	$('.sign-up').on('submit', function (e) {
				e.preventDefault();
				var reg_url = "<?php echo admin_url('admin-ajax.php') ?>"
				var form_data = $(this).serialize();
				form_data += '&action=custom_reg&param=reg_test';
				$.when(
					$.ajax({
						url: reg_url,
						type: 'POST',
						data: form_data
					})
				).then((response) => {
					console.log(response);
					if (response == 10 ) {
						$('.error').html('User created succesfully').hide().slideDown(600);
						setTimeout(() => {
							window.location = '<?php echo site_url('/log-in') ?>'
						}, 1000);
					} else {
						$('.error').html(response.replace('0', "")).hide().slideDown();
						setTimeout(() => {
							$('.error').slideUp(600);
						}, 3000);

					}
				}, error => {
					console.log(error);
				})
			});
		})
	</script>
</body>

</html>