<!DOCTYPE HTML>
<html lang="en">
<head>
		<title>GoOut</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="${prefix}resources/css/style_login.css" />
		
		<%@ page contentType="text/html; charset=UTF-8"%>
		
 </head>
    <body>
				<form class="form3" name="log" method="post">
					<p class="logo">
				        <img id="logo2" src="${prefix}resources/images/logo_login.png">
				    </p>
				    <p class="a">
				        <label for="login">Usuario</label>
				        <input type="text" name="login" id="login" placeholder="Usuario">
				    </p>
				    <p class="a">
				        <label for="password">Contraseña</label>
				        <input type="password" name="password" id="password" placeholder="Contraseña"> 
				    </p>
				    <p class="a">
				        <label for="password2">Repite Contraseña</label>
				        <input type="password" name="password2" id="password2" placeholder="Repite contraseña"> 
				    </p>
					<p class="a">
				        <label for="email">Email</label>
				        <input type="email" name="email" id="email" placeholder="Email"> 
				    </p>

				    <p class="a">
				        <input type="button" name="submit" value="Registrarse" onClick="registro()"/>
				    </p>    
				</form>		
				
    </body>
</html>