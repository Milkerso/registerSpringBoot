
function checker()
{
	clearMessage();
	var name=document.querySelector('#name').value;
	if(!nameChecker())
	{
		disableButton();
	}
	else if(!lastNameChecker())
	{
		disableButton();
	}
	else if(!emailChecker())
	{
		disableButton();
	}
	else if(!loginChecker())
	{
		disableButton();
	}
	else if(!passwordChecker())
	{
		disableButton();
	}
	else if(!confirmPasswordChecker())
	{
		disableButton();
	}
	else
	{
		enableButton();
	}
}
function disableButton(){
	document.getElementById('submit').disabled = true;
}
function enableButton()
{
	document.getElementById('submit').disabled = false;
}
function nameChecker()
{
	var name=document.querySelector('#name').value;
	if(name!==null&& ''!==name)
	{
		return true;
	}
	else
	{
		document.getElementById("nameMessage").innerHTML = "<span style='color:red'>Wpisz imie</span>";
		return false;
	}
}
function lastNameChecker()
{
	var lastName=document.querySelector('#lastName').value;
	if(lastName!==null&& ''!==lastName)
	{
		return true;
	}
	else
	{
		document.getElementById("lastNameMessage").innerHTML = "<span style='color:red'>Wpisz nazwisko</span>";
		return false;
	}
}
function emailChecker()
{
	var email=document.querySelector('#email').value;
	var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	if(!(email!==null&& ''!==email))
	{
		document.getElementById("emailMessage").innerHTML = "<span style='color:red'>Wpisz email</span>";
		return false;
	}
	else if(!re.test(email.toLowerCase()))
	{
		document.getElementById("emailMessage").innerHTML = "<span style='color:red'>Wpisz poprawny email</span>";
		return false;
	}
	else
	{
		return true;
	}
}
function confirmPasswordChecker()
{
	var confirmPassword=document.querySelector('#confirmPassword').value;
	var password=document.querySelector('#password').value;
	if(!(confirmPassword!==null&& ''!==confirmPassword))
	{
		document.getElementById("confirmPasswordMessage").innerHTML = "<span style='color:red'>Potwierdz hasło</span>";
		return false;
	}
	else if(password!=confirmPassword)
	{
		document.getElementById("confirmPasswordMessage").innerHTML = "<span style='color:red'>Hasła się różnią</span>";
		return false;
	}
	else
	{
	return true;
	}
}

function loginChecker(){

	var login=document.querySelector('#login').value;
	if(login!==null&& ''!==login)
	{
		return true;
	}
	else
	{
		document.getElementById("loginMessage").innerHTML = "<span style='color:red'>Wpisz swój login</span>";
		return false;
	}
}
function passwordChecker(){

		var password=document.querySelector('#password').value;
		var name=document.querySelector('#name').value;
		var lastName=document.querySelector('#lastName').value;
		var login=document.querySelector('#login').value;
		var flag=true;
		if(password!==null&& ''!==password)
		{
		 if(password.length>0){
		if(new RegExp(name.toLowerCase()).test(password.toLowerCase()))
		{
			document.getElementById("nameMessage").innerHTML = "<span style='color:red'>Hasło nie może zawierać Twojego imienia</span>";
			flag=false;
		}

		if(password.length<8)
		{
			document.getElementById("eightCharMessage").innerHTML = "<span style='color:red'>Hasło musi mieć wiecej niż 8 znaków</span>";
			flag=false;
		}
		if(!password.match(/^(?=.*[0-9]).*$/))
		{
			document.getElementById("numberMessage").innerHTML = "<span style='color:red'>Hasło musi mieć przynajmniej 1 cyfrę</span>";
			flag=false;
		}
		if(!password.match(/^(?=.*[a-z]).*$/))
		{
			document.getElementById("lowerCaseMessage").innerHTML = "<span style='color:red'>Hasło musi mieć przynajmniej 1 mała literę</span>";
			flag=false;
		}

		if(!password.match(/^(?=.*[A-Z]).*$/))
		{
			document.getElementById("lowerCaseMessage").innerHTML = "<span style='color:red'>Hasło musi mieć przynajmniej 1 dużą literę</span>";
			flag=false;
	    }

		if(new RegExp(lastName.toLowerCase()).test(password.toLowerCase()))
		{
			document.getElementById("lastNameMessage").innerHTML = "<span style='color:red'>Hasło nie może zawierać Twojego nazwiska</span>";
			flag=false;
		}

		if(new RegExp(login.toLowerCase()).test(password.toLowerCase()))
		{
			document.getElementById("loginMessage").innerHTML = "<span style='color:red'>Hasło nie może zawierać Twojego loginu</span>";
			flag=false;
		}

		}
		}
		else
		{
			document.getElementById("passwordMessage").innerHTML = "<span style='color:red'>Wpisz hasło</span>"
			return false;
		}
		return flag;


}

function clearMessage(){
		document.getElementById("passwordMessage").innerHTML = "<span style='color:red'></span>";
        document.getElementById("nameMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("emailMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("eightCharMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("lastNameMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("loginMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("upperCaseMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("numberMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("lowerCaseMessage").innerHTML = "<span style='color:red'></span>";
		document.getElementById("confirmPasswordMessage").innerHTML = "<span style='color:red'></span>";

}