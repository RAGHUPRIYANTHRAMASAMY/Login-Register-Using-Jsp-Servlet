let user = document.getElementById("username");
let pass = document.getElementById("password");
let next = document.getElementById("next");

next.addEventListener('click', function() {

	if (pass.style.display == '') {
		pass.style.display = 'block';
		user.classList.toggle("hidden");
	}
	else {
		pass.style.display = '';
	}

})

function show() {

	var password = document.getElementById('pass1');
	image = document.getElementById('eye');

	if (password.type === "password") {
		password.type = "text";
		image.setAttribute('src', 'eyeshow.png');

	} else if (password.type === "text") {
		password.type = "password";
		image.setAttribute('src', 'eyehide.png');
	}
}