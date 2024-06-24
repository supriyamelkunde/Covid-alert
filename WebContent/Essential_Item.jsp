<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="user_header.html"%>
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
<script type="text/javascript">
function validateform(){  
	var firstName=document.myform.firstName.value;  
	var lastName=document.myform.lastName.value;  
	var c_no=document.myform.c_no.value;
	var city=document.myform.city.value;  
	var pincode=document.myform.pincode.value; 
	var status=document.myform.status.value;
	var medicine=document.myform.medicine.value;
	var quantity=document.myform.quantity.value;
	 
	if (firstName==null || firstName==""){  
	  alert("First Name can't be blank");  
		  return false;    
	}
    else if (lastName==null || lastName==""){  
	  alert("Last Namecan't be blank");  
		  return false;    
	}
	
    else if (c_no==null || c_no==""){  
		  alert("contact no can't be blank");  
			  return false;    
		}		
    else if (isNaN(c_no)){  
  	  document.getElementById("numcon").innerHTML="Enter Numeric value only";  
  	  return false;  
  	}
		else if(c_no.length!=10){  
		  alert("Contact No must be at least 10 digit.");  
		  return false;  
		  }  
	else if (city==null || city==""){  
		  alert("City can't be blank");  
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
	
	   else if(medicine=="select")
	{  
	  alert("Items can't be blank");  
		  return false;  
	}
	else if(quantity==null || quantity==""){  
	  alert("Quantity can't be blank");  
		  return false;  
	}
	else if(status=="select"){  
		  alert("Please select operation ");  
			  return false;  
		}
	
	else{  
	  return true;  
	  }  
	} 
</script>
<body>
	<div align="center">

		<img src="Img/cover7.jpg" alt="donation" /><br />

	</div>
	<br />
	<div class="container">

		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>Essential Item</u>
				</h1>
				<div class="card-body">

					<form action="user_Essential" method="POST" name="myform"
						onsubmit="return validateform()">
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
							<label><h5>Contact No:</h5><h6 style="Color:red;">*</h6></label> <input type="number"
								class="form-control" name="c_no" placeholder="Enter no" /> <span
								id="numloc"></span>
						</div>

						<div class="form-group">
							<label><h5>City:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
								class="form-control" name="city" placeholder="Enter City" />
						</div>
						<div class="form-group">
							<label><h5>Pincode:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
								class="form-control" name="pincode" pattern="\d*"
								placeholder="Enter Pincode" />
						</div>

						<div class="form-group">
							<label><h5>Choose Items:</h5><h6 style="Color:red;">*</h6></label> <select
								class="form-control selectpicker" name="medicine">
								<option value="select">select</option>
								<option value="Medicine">Medicine</option>
								<option value="Pulse Oximetry">Pulse Oximetry</option>
								<option value="Oxygen cylinder">Oxygen cylinder</option>
								<option value="Sanitizer">Sanitizer</option>
								<option value="Face Mask">Face Mask</option>
								<option value="PPE Kit">PPE Kit</option>
								<option value="Gloves">Gloves</option>

							</select>
						</div>
						<div class="form-group">
							<label><h5>Quantity:</h5><h6 style="Color:red;">*</h6></label> <input type="number"
								class="form-control" name="quantity"
								placeholder="Enter quantity" />
						</div>
						<div class="form-group">
							<label><h5>Choose(Request/Donate):</h5><h6 style="Color:red;">*</h6></label> <select
								class="form-control selectpicker" name="status">
								<option value="select">select</option>
								<option value="Donate">Donate</option>
								<option value="Request">Request</option>
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
	<br>
	<br>
</body>
</html>
<%@ include file="footer.jsp"%>