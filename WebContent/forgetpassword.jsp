<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fight Covid-19</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>

<style type="text/css">
body {
    background: #74ebd5;
    background: -webkit-linear-gradient(to right, #74ebd5, #ACB6E5);
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    min-height: 100vh;

}


</style>


<body>
<br>
	<br>
<!-- 	<div align="center">
	<img src="" alt="plasma"/><br/>	
	</div>  -->
	<div class="container">

		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>Forget Password</u>
				</h1>
				<div class="card-body">
									
						<form  action="set_password.jsp" method="POST">
							<div class="form-group">
								<label><h5>UserName:</h5></label> <input type="text"
									class="form-control" name="username" 
									placeholder="Enter  UserName" />
							</div>
							
								<div class="form-group">
                    <label ><h5>Security Question:</h5><h6 style="Color:red;">*</h6></label>
                    <select class="form-control selectpicker"  id="security" name="security">
                        <option value="select">select</option>
                        <option value="Q1">What was your childhood nickname?</option>
                        <option value="Q2">In what city you meet your spouse/significant other?</option>
                        <option value="Q3">What is the name of your favorite childhood friend ?</option>
                        <option value="Q4">where did you  vacation last year?</option>
                        <option value="Q5">What are the last 5 digits of your driver's license number?</option>
                    </select>
                </div>
							
							
							<div class="form-group">
								<label><h5>Answer:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
									class="form-control" name="answer"
									placeholder="Enter Answer" />
							</div>
							
							
							
							<div class="form-group">
								<label><h5>New Password:</h5></label> <input type="password"
									class="form-control" name="password"
									placeholder="Enter New Password" />
							</div>
							
							  							
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Submit</button>  
							</div>
						</form>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
</body>
</html>
<%@ include file="footer.jsp" %>
