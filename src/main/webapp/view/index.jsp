<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="google-signin-client_id" content="170024686743-1qm8as78v2sh04k5tfdj9qlai0h9ptv9.apps.googleusercontent.com">
		<title>Insert title here</title>
		<script src="http://code.jquery.com/jquery-3.0.0.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.5/angular.min.js"></script>
		<script src="https://apis.google.com/js/platform.js" async defer></script>
		<script src="ui/js/controller.js"></script>
	</head>
	<body ng-app="login">
		<div class="" ng-controller="check">
			<div class="g-signin2" data-onsuccess="onSignIn"></div>
			<a href="#" onclick="signOut();">Sign out</a>
			<br>Login
			<form method="POST" action="validate/custom">
				<input type="email" name="email" id="email" ng-model="user.email" placeholder="email" required/>
				<input type="password" name="password" id="password" ng-model="user.password" placeholder="password" required/>
				<input type="submit"/>
			</form>
			
			<br>UserDetails
			<form method="POST" action="userDetailsByEmail">
				<input type="email" name="email" id="email" ng-model="user.email" placeholder="email" required/>
				<input type="submit"/>
			</form>
			
			<br>Sign Up
			<form method="POST" action="createAccount" >
				<input type="text" id="name" name="name" placeholder="name" required />
				<input type="email" name="email" id="email" placeholder="email" required />
				<input type="password" name="password" id="password" placeholder="password" required />
				<input type="text" name="designation" id="designation" placeholder="designation" required />
				<input type="role" name="role" id="role" placeholder="role" required />
				<input type="number" name="mobileNumber" id="mobileNumber" placeholder="mobile" required />
				<input type="submit"/>
			</form>

		</div>
	</body>
</html>
