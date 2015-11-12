
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
				        <input type="checkbox" name="remember" id="remember">
				        <label for="remember">Recordar</label>
						<span id="datos_log"></span>
				    </p>

				    <p class="a">
				        <input type="button" name="submit" value="Entrar" onClick="validate()"/>
				    </p>
					<p id="reg"><a href='registro'>Si aún no tienes cuenta registrate aquí</a></p>
				</form>
	<div id="actv">
				<table>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>		
				</table>
	</div>			
				
    </body>
</html>