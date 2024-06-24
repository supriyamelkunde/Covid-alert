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
<script>  
function validateform(){  
	var firstName=document.myform.firstName.value;  
	var lastName=document.myform.lastName.value;  
	var cno=document.myform.cno.value;
	var username=document.myform.username.value;  
	var password=document.myform.password.value; 
	var age=document.myform.age.value;
	var email=document.myform.email.value;
	var city=document.myform.city.value;
	var pincode=document.myform.pincode.value;
	 
	if (firstName==null||firstName==""){  
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
	  document.getElementById("numcno").innerHTML="Enter Numeric value only";  
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
	 else if (age==null || age=="")
	    	
	    {  
		  alert("age can't be empty");  
		  		 return false;    
		 }
	    else if(age<18 ){
	    	alert("age can't be less than 18 ");
	    	return false;
	    }
  else if (email==null || email==""){  
	  alert("Email can't be blank");  
		  return false;    
	}
  else if (city==null || city==""){  
	  alert("City can't be blank");  
		  return false;    
	}
  else if (pincode==null || pincode==""){  
	  alert("Pincode can't be blank");  
		  return false;    
	}		
	else if (isNaN(num)){  
	  document.getElementById("numpin").innerHTML="Enter Numeric value only";  
	  return false;  
	}	
	else if(pincode.length<6){  
	  alert("Pincode must be at least 6 digit.");  
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
	</div>  -->
	<div class="container">

		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>User Register</u>
				</h1>
				<div class="card-body">
									
						<form  action="user_register" method="POST" name="myform" onsubmit="return validateform()">
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
								<label><h5>Username:</h5></label> <input type="text"
									class="form-control" name="username" 
									placeholder="Enter Username" />
							</div>
							<div class="form-group">
								<label><h5>password:</h5></label> <input type="password"
									class="form-control" name="password" 
									placeholder="Enter Password" />
							</div>
							<div class="form-group">
								<label><h5>Age:</h5></label> <input type="number"
									class="form-control" name="age" 
									placeholder="Enter Age" />
							</div>
							<div class="form-group">
								<label><h5>Contact No:</h5></label> <input type="number"
									class="form-control" name="cno" 
									placeholder="Enter Contact No" />
							</div>
							<div class="form-group">
								<label><h5>Email:</h5></label> <input type="email"
									class="form-control" name="email"
									placeholder="Enter email" />
							</div>
							<div class="form-group">
								<label><h5>City:</h5></label> <input type="text"
									class="form-control" name="city" 
									placeholder="Enter City" />
							</div>
							<div class="form-group">
								<label><h5>Pincode:</h5></label> <input type="number"
									class="form-control" name="pincode"
									placeholder="Enter Pincode" />
							</div>
												
							  								<div class="form-group">
                    <label ><h5>Security Question:</h5><h6 style="Color:red;">*</h6></label>
                    <select class="form-control selectpicker"  id="security" name="security">
                        <option value="select">select</option>
                        <option value="Q1">What was your childhood nickname ?</option>
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