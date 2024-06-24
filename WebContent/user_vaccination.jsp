<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="user_header.html" %>
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
	var age=document.myform.age.value;  
	var cno=document.myform.cno.value; 
	var city=document.myform.city.value;  
	var pincode=document.myform.pincode.value;
	var proof=document.myform.proof.value;  
	
	 
	if (firstName==null || firstName==""){  
	  alert("First Name can't be blank");  
		  return false;    
	}
    else if (lastName==null || lastName==""){  
	  alert("Last Name can't be blank");  
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
	 else if (cno==null ||cno==""){  
		  alert("contact no can't be blank");  
			  return false;    
		}		
	else if(cno.length!=10){  
	  alert("Contact must be at least 10 digit.");  
	  return false;  
	  } 	
	else if (city==null || city==""){  
	  alert("city can't be blank");  
		  return false;  
	}
	else if (pincode==null || pincode==""){  
		  alert("pincode can't be blank");  
			  return false;    
		}		
		else if (isNaN(pincode)){  
		  document.getElementById("numpin").innerHTML="Enter Numeric value only";  
		  return false;  
		}	
		else if(pincode.length!=6){  
		  alert("pincode must be at least 6 digit.");  
		  return false;  
		  }  
	else if (proof=="select"){  
	  alert("Please Select the ID Proof ");  
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
					<u>User Vaccination Register</u>
				</h1>
				<div class="card-body">
									
						<form  action="user_VaccineRegister" method="POST" name="myform" onsubmit="return validateform()">
						
					<!--     <div class="form-group">
								<label><h5>Username:</h5></label> <input type="text"
									class="form-control" name="username" 
									placeholder="Enter Username" />
							</div>  -->	
							
							<div class="form-group">
								<label><h5>First Name:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
									class="form-control" name="firstName" 
									placeholder="Enter  First Name" />
							</div>
							<div class="form-group">
								<label><h5>Last Name:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
									class="form-control" name="lastName"
									placeholder="Enter Last Name" />
							</div>
							
						
							<div class="form-group">
								<label><h5>Age:</h5><h6 style="Color:red;">*</h6></label> <input type="number"
									class="form-control" name="age" 
									placeholder="Enter Age" /><span id="numloc"></span>
							</div>
							<div class="form-group">
								<label><h5>Contact No:</h5><h6 style="Color:red;">*</h6></label> <input type="number"
									class="form-control" name="cno" 
									placeholder="Enter Contact No" /><span id="numcno"></span>
							</div>
							<div class="form-group">
								<label><h5>City:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
									class="form-control" name="city" 
									placeholder="Enter City" />
							</div>
							<div class="form-group">
								<label><h5>Pincode:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
									class="form-control" name="pincode"
									placeholder="Enter Pincode" /><span id="numpin"></span>
							</div>
										  <div class="form-group">
                    <label ><h5>ID Proof:</h5><h6 style="Color:red;">*</h6></label>
                    <select class="form-control selectpicker"  id="proof" name="proof">
                        <option value="select">select</option>
                        <option value="Adhaar(UID)">Adhaar(UID)</option>
                        <option value="Passport">Passport</option>
                        <option value="Ration Card with address">Ration Card with address</option>
                    	<option value="PAN Card">PAN Card</option>
                    </select>
                </div>			
							  
							
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Submit</button>  
							</div>
						
						</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp" %>