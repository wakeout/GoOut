
<!DOCTYPE HTML>
<html lang="en">
  
  <head>
 	<title>GoOut</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="${prefix}resources/css/style_login.css" />
		
		<%@ page contentType="text/html; charset=UTF-8"%>
		
   </head>
    <body>
				<form action="${prefix}login" class="form3" name="log" method="POST">
					<p class="logo">
				        <a href="${prefix}sin_registro"><img id="logo2" src="${prefix}resources/images/logo_login.png"></a>
				    </p>
				    <p class="a">
				        <label for="login">Usuario</label>
				        <input type="text" name="login" id="login" placeholder="Usuario" maxlength="30">
				    </p>
				    <p class="a">
				        <label for="password">Contraseña</label>
				        <input type="password" name="pass" id="pass" placeholder="Contraseña" maxlength="20"> 
				    </p>

				    <p class="a">
				       <button class="boton" name="submit" type="submit">Entrar</button>
				    </p>
					<p id="reg"><a href='registro'>Si aún no tienes cuenta registrate aquí</a></p>
					
					<c:if test="${not empty loginError}">
						<br><p class='errorLogin'>${loginError}</p>
					</c:if>
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