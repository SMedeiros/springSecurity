<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
	</head>
<body>
	<h1>Login</h1>
	
	<div id="login-error">
		<span style="color:red; font-weight:bold;">${error}</span>
	</div>
	
	<form action="check" method="post" >
		<p>
			<label for="username">Login: </label>
			<input id="username" name="username" type="text" />
		</p>
		
		<p>
			<label for="password">Senha: </label>
			<input id="password" name="password" type="password" />
		</p>
		
		<input  type="submit" value="Login"/>								
	</form>
</body>
</html>