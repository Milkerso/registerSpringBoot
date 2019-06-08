
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="pl_PL">
   <head>
      <title>Hello, world!</title>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" type="text/css" href="/resources/style/style.css">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   </head>
   <body onload="disableButton()">
      <div class="row justify-content-center align-items-center h-100">
         <div class="col-md-6">
            <div class="card">
               <header class="card-header" style="background-color: #3399FF;">
                  <p class="card-title mt-2 h4">Rejestracja</p>
               </header>
               <c:if test = "${registerSuccess!=null}">
                               <div class="alert alert-success" role="alert">
                                 <h4 style="text-align: center " class="alert-heading">Super</h4>
                                 <p style="text-align: center "><c:out value="${registerSuccess}"/> </p>
                               </div>
                </c:if>
               <c:if test = "${registerFailed!=null}">
                               <div class="alert alert-success" role="alert">
                                 <h4 style="text-align: center " class="alert-heading"><c:out value="${registerFailed}"/></h4>
                                 <p style="text-align: center ">Uzytkownik o tym emailu juz istnieje </p>
                               </div>
                </c:if>

             <form action="/adduser" th:action="@{/adduser}" th:object="${user}" method="post">
                  <div class="cotainer">
                     <div class="form-row p-2">
                        <div class="form-group col-md-6 p-2">
                           <label for="name">Name</label>
                           <input type="text" th:field="*{name}" onkeyup="checker()" name="name" class="form-control" id="name" placeholder="Name" required>
                           <div class="invalid-feedback">Wpisz poprawne imie.</div>
                        </div>
                        <div class="form-group col-md-6 p-2">
                           <label for="lastName">Nazwisko</label>
                           <input type="text" th:field="*{lastName}" onkeyup="checker()" name="lastName" class="form-control" id="lastName" placeholder="Nazwisko" required>
                        </div>
                     </div>
                     <div class="form-group p-2">
                        <label for="email">Email</label>
                        <input type="text" th:field="*{email}" onkeyup="checker()" class="form-control" id="email" name ="email" placeholder="Email" required>
                     </div>
                     <div class="form-group p-2">
                        <label for="login">Login</label>
                        <input type="text" th:field="*{login}" onkeyup="checker()" name="login" class="form-control" id="login" placeholder="Login" required>
                     </div>
                     <div class="form-row p-2">
                        <div class="form-group col-md-6 p-2">
                           <label for="password">Haslo</label>
                           <input type="password" th:field="*{password}" onkeyup="checker()"  name="password" class="form-control" id="password" placeholder="Haslo" required>
                        </div>
                        <div class="form-group col-md-6 p-2">
                           <label for="repeatPassword">Powtorz haslo</label>
                           <input type="password"  onkeyup="checker()" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Powtorz haslo" required>
                        </div>
                     </div>
					 <div class="d-flex form-row justify-content-center" id="eightCharMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="nameMessage" style=" font-size: 10pt;"></div>
				 	 <div class="d-flex form-row justify-content-center" id="lastNameMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="emailMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="loginMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="upperCaseMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="numberMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="lowerCaseMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="passwordMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex form-row justify-content-center" id="confirmPasswordMessage" style=" font-size: 10pt;"></div>
					 <div class="d-flex flex-row-reverse p-2">
						<button type="submit" id="submit" name="submit" class="btn btn-primary">Zarejestruj</button>
					 </div>
				 </div>
            </div>
         </div>
      </div>
      </form>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5xlXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/uxl/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      <script type="text/javascript" src="/resources/script/validate.js"></script>
      <script>
         var form=document.querySelector('.needs-validation');

         	form.addEventListener('submit',function(event){
         		if(form.checkValidity()===false){
         			event.preventDefault();
         			event.stopPropagation();
         		}
         		form.classList.add('was-validated');
         	})
      </script>
   </body>
</html>