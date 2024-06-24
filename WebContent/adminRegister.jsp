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
<script>  
function validateform(){  
	var firstName=document.myform.firstName.value;  
	var lastName=document.myform.lastName.value;  
	var cno=document.myform.cno.value;
	var username=document.myform.username.value;  
	var password=document.myform.password.value; 
	 
	if (firstName==null || firstName==""){  
	  alert("First Name can't be blank");  
		  return false;    
	}
    else if (lastName==null || lastName==""){  
	  alert("Last Namecan't be blank");  
		  return false;    
	}
    else if (cno==null || cno==""){  
	  alert("Contact no can't be blank");  
		  return false;    
	}		
	else if (isNaN(num)){  
	  document.getElementById("numloc").innerHTML="Enter Numeric value only";  
	  return false;  
	}	
	else if(cno.length<10){  
	  alert("Contact no must be at least 10 digit.");  
	  return false;  
	  }  
	else if (username==null || username==""){  
		  alert("Date can't be blank");  
		  return false;  
		}	
	else if (password==null || password==""){  
	  alert("Time can't be blank");  
		  return false;  
	}
	
	else{  
	  return true;  
	  }  
	} 
</script> 
<body>
<br>
	<br>
<!-- 	<div align="center">
	<img src="" alt="plasma"/><br/>	
	</div>   -->
	<div class="container">

		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>Admin Register</u>
				</h1>
				<div class="card-body">
									
						<form  name="myform" action="admin_register" method="POST" onsubmit="return validateform()">
							<div class="form-group">
								<label><h5>First Name:</h5></label> <input type="text"
									class="form-control" name="firstName" 
									placeholder="Enter  First Name" />
							</div>
							<div class="form-group">
								<label><h5>Last Name:</h5></label> <input type="text"
									class="form-control" name="lastName"
									placeholder="Enter Last Name" />
							</div>
							<div class="form-group">
								<label><h5>Contact No:</h5></label> <input type="text"
									class="form-control" name="cno" 
									placeholder="Enter Contact No" /><span id="numloc"></span>
							</div>
							<div class="form-group">
								<label><h5>Username:</h5></label> <input type="text"
									class="form-control" name="username" 
									placeholder="Enter Username" />
							</div>
							<div class="form-group">
								<label><h5>password:</h5></label> <input type="password"
									class="form-control" name="password" 
									placeholder="Enter Password" />
							</div>
																						
							  
							
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Submit</button>  
							</div>
						
						</form>
				</div>
			</div>
		</div>
	</div><br>
</body>
</html>
<%@ include file="footer.jsp" %>