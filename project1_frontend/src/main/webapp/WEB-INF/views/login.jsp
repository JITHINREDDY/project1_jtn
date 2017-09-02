<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/j_spring_security_check" var="login"></c:url>

<form action="${login }" method="post">
Enter username <input type="text" name="j_username"><br>
Enter password <input type="password" name="j_password"><br>
<input type="submit" value="Login">
</form>


</body>
</html>
<%@ include file="footer.jsp" %> --%>




<%--

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file = "header.jsp" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/css/logincss.css" rel="stylesheet" type="text/css">
<script src="<c:url value="/resources/js/loginjs.js" />"></script>



  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>




<title>Login Page</title>
</head>



<body>
<c:url value="/j_spring_security_check" var="login"></c:url>
<br><br><br>
   <!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
    <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="${login }" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="j_username" required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="j_password" required>
                <div id="remember" class="checkbox">
                    <!-- <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label> -->
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" value="Login">Sign in</button>
            </form>
            
            <!-- /form -->
            <!-- <a href="#" class="forgot-password">
                Forgot the password?
            </a> -->
        </div><!-- /card-container -->
    </div><!-- /container -->
</body>
<br><br><br>

</html>
<%@ include file = "footer.jsp" %> 
--%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file = "header.jsp" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/css/zonlogin.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Login Page</title>
</head>
<body>
<c:url value="/j_spring_security_check" var="login"></c:url>
<br><br><br>

    <div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="${login }" role="form">
						<div class="form-group">
							<h2>Sign in</h2>
						</div>
						<div class="form-group">
							<strong>Enter the username</strong>
							<input id="signinEmail" type="text" name="j_username" maxlength="50" class="form-control">
						</div>
						<div class="form-group">
							<strong>Password</strong>
							
				<%--			<span class="right"><a href="#">Forgot your password?</a></span> --%>
							<input id="signinPassword" type="password" name="j_password" maxlength="25" class="form-control">
						</div>
						<div class="form-group" style="padding-top: 12px;">
							<button id="signinSubmit" type="submit" value="Login" class="btn btn-success btn-block">Sign in</button>
						</div>
						<div class="form-group divider">
							<hr class="left"><small>New to site?</small><hr class="right">
						</div>
						<c:url value="/all/registrationform" var="url1"></c:url>
		
						<p class="form-group"><a href="${url1 }" class="btn btn-info btn-block">Create an account</a></p>
						<p class="form-group">By signing in you are agreeing to our <a href="#">Terms of Use</a> and our <a href="#">Privacy Policy</a>.</p>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<br><br><br>

</html>
<%@ include file = "footer.jsp" %> 
 
