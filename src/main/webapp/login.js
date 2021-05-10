let user = document.getElementById("username");
let pass = document.getElementById("password");
let next = document.getElementById("next");
var password = document.getElementById('pass1');
let pass_select = document.getElementById('pass_select');
next.addEventListener('click', function () {
    
    if (pass.style.display == '') {
        pass.style.display = 'block';
        pass_select.classList.add("animate_sel");
        password.classList.add("animate_pass");
        user.classList.toggle("hidden");
    }
    else {
        pass.style.display = '';
    }

})

function show() {

            image = document.getElementById('eye');

            if (password.type === "password") {
                password.type = "text";
                image.setAttribute('src', 'eyeshow.png');

            } else if (password.type === "text") {
                password.type = "password";
                image.setAttribute('src', 'eyehide.png');
            }
        }

