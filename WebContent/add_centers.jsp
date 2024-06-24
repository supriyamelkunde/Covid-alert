<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="admin_header.jsp" %>
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
	var location=document.myform.location.value;  
	var address=document.myform.address.value;  
	var pincode=document.myform.pincode.value;
	var city=document.myform.city.value;  
	
	 
	if (pincode==null || pincode==""||pincode.length<6||isNaN(num)){  
	  alert("center pincode can't be blank.Pincode must be at least 6 characters long.Enter Numeric value only");  
	  document.getElementById("numloc").innerHTML="Enter Numeric value only"; 
		  return false;    
	}	
	else if (isNaN(num)){  
	  document.getElementById("numloc").innerHTML="Enter Numeric value only";  
	  return false;  
	}	
	else if(pincode.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
	else if (city==null || city==""){  
		  alert("Date can't be blank");  
		  return false;  
		}	
	else if (address==null || address==""){  
	  alert("Time can't be blank");  
		  return false;  
	}
	else if (location==null || location==""){  
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
					<u>Add Center</u>
				</h1>
				<div class="card-body">
									
						<form name="myform" action="add_centers" method="POST"  onsubmit="return validateform()">
							<div class="form-group">
								<label><h5>Enter Pincode:</h5></label> <input type="text"
									class="form-control" name="pincode" 
									placeholder="Enter Pincode" /><span id="numloc"></span>
							</div>
							<div class="form-group">
								<label><h5>Enter City:</h5></label> <input type="text"
									class="form-control" name="city"
									placeholder="Enter City" />
							</div>
							<div class="form-group">
								<label><h5>Enter Center Name:</h5></label> <input type="text"
									class="form-control" name="address" 
									placeholder="Enter Address" />
							</div>
							<div class="form-group">
								<label><h5>Enter Location:</h5></label> <input type="text"
									class="form-control" name="location" 
									placeholder="Enter Location" />
							</div>
														
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Add Center</button>  
							</div>
						
						</form>
				</div>
			</div>
		</div>
	</div><br>
</body>
</html>
<%@ include file="footer.jsp" %>