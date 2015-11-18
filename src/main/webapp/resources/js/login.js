 function validate() {
            var username = document.getElementById("login").value;
            var password = document.getElementById("password").value;
			
            if (username == null || username == "") {
				document.getElementById("datos_log").innerHTML = 'Introduce usuario';
                return false;
            }
            if (password == null || password == "") {
                document.getElementById("datos_log").innerHTML = "Introduce password";
                return false;
            }
			else
				window.location='index.html';
            /*if(username == "goout" && password == "goout"){
				window.location='index.html';
				return false;
			}
			else{
				document.getElementById("datos_log").innerHTML = "Login incorrecto";
			}*/
            
}