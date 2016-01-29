<!DOCTYPE HTML>
<html lang="en">
<head>
		<title>GoOut</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="${prefix}resources/css/style_login.css" />
		
		<%@ page contentType="text/html; charset=UTF-8"%>
		
 </head>
    <body>
				<form action="${prefix}registro" class="form3" name="log" method="POST">
					<p class="logo">
				        <img id="logo2" src="${prefix}resources/images/logo_login.png">
				    </p>
				    <p class="a">
				        <label for="login">Usuario*</label>
				        <input type="text" name="login" id="login" placeholder="Usuario" maxlength="40" required>
				    </p>
				    <p class="a">
				        <label for="login">Nombre</label>
				        <input type="text" name="nombre_usuario" id="nombre_usuario" placeholder="Nombre" maxlength="30">
				    </p>
				    <p class="a">
				        <label for="password">Contraseña*</label>
				        <input type="password" name="pass" id="pass" placeholder="Contraseña" maxlength="20"> 
				    </p>
				    <p class="a">
				        <label for="password2">Repite Contraseña*</label>
				        <input type="password" name="pass2" id="pass2" maxlength="20" placeholder="Repite contraseña"> 
				    </p>
					<p class="a">
				        <label for="email">Email*</label>
				        <input type="email" name="email" id="email" placeholder="Email" maxlength="40" required> 
				    </p>

				    <p class="a">
				        <button class="boton" name="submit" value="Registrarse" type="submit">Registrarse</button>
				    </p>    
				
					<c:if test="${not empty loginError}">
						<br><p class='errorLogin'>${loginError}</p>
					</c:if>
				</form>	
				
				
    </body>
</html>