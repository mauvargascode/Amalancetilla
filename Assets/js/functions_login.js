$('.login-content [data-toggle="flip"]').click(function() {
	$('.login-box').toggleClass('flipped');
	return false;
});

document.addEventListener('DOMContentLoaded', function(){

	if(document.querySelector("#formLogin")){
		let formLogin = document.querySelector("#formLogin");
		formLogin.onsubmit = function(e){
			e.preventDefault();

			let strEmail = document.querySelector('#txtEmail').value;
			let strPassword = document.querySelector('#txtPassword').value;

			if(strEmail == "" || strPassword == "")
			{
				swal("Por favor", "Escribe usuario y contraseñaa.", "error");
				return false;
			}
		}
	}

}, false);