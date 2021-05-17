$(document).ready(function(){
		var email;
		$('#next').click(function(){
			email = $('#userName').val();
			if($('#userName').val() == null || $('#userName').val() == ""){
				$("#result1").html("Please Enter your Username").css("color", "red");
				$('#userName').css("border", "2px solid #ef476f");
			}
			else{
				$.ajax({
					type: 'POST',
					data: {userEmail: email},
					url: 'uservalidate',
					async: false,
					success: function(result){
						if($.trim(result) == "true"){
							$('#username').toggleClass("hidden");
							$('#password').toggleClass("show");
							$('#pass_select').addClass("animate_sel");
							$('#pass1').addClass("animate_pass");
							
						}
						if($.trim(result) == "false"){
							$('#result1').html("This Email ID cannot be found. Please use a different Email ID or <span style='padding-left: 5px;'><a href='register.jsp'> sign up</a></span> for a new account.").css("color", "red");
							$('#userName').css("border", "2px solid red");
						}
						
					}
				});
			}
		});
		
		$('#userName').focus(function(){
			$("#result1").html("");
			$('#userName').css("border", "");
		})
		
		$('#btnsubmit').click(function(){
			const password = $('#pass1').val();
			if(password == null || password == ""){
				$('#pass-result').html("Please Enter your password").css("color", "red");
				$('#pass1').css("border", "2px solid #e63946")
			}
			else{
				$.ajax({
					type: 'POST',
					data: {password: password, userEmail : email},
					url: 'passwordvalidate',
					async: false,
					success: function(value){
						if($.trim(value) == "true"){
							$('#form').submit();
							console.log("inside pass if");
						}
						if($.trim(value) == "false"){
							$('#pass-result').html("Incorrect password. Please try again.").css("color", "red");
							$('pass1').css("border", "2px solid #d90429")
						}
					}
				});
			}
		});
		
		$('#pass1').focus(function(){
			$('#pass-result').html("");
			$('pass1').css("border", "")
		})
		
	});


var emailId = document.getElementById('userName');
emailId.onblur = emailSet;


function emailSet() {
	var email = document.getElementById("userName").value;
	console.log(email);
	sessionStorage.setItem("email", email);
};

var passShow = document.getElementById('eye');
passShow.onclick = show;

function show() {

	image = document.getElementById('eye');
	var password = document.getElementById('pass1');
	if (password.type === "password") {
		password.type = "text";
		image.setAttribute('src', 'eyeshow.png');
	} else if (password.type === "text") {
		password.type = "password";
		image.setAttribute('src', 'eyehide.png');
	}
}
