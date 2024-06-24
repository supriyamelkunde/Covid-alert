<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="user_header.html" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fight Covid-19</title>
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
	var blood=document.myform.blood.value;
	var age=document.myform.age.value;  
	var rdate=document.myform.rdate.value; 
	var city=document.myform.city.value;  
	var pincode=document.myform.pincode.value;
	var status=document.myform.status.value;  
	var c_no=document.myform.c_no.value; 
	 
	if (firstName==null || firstName=="")
	{
	  alert("firstName can't be blank");  
		  return false;    
	}
    else if (lastName==null || lastName==""){  
	  alert("Last Name can't be blank");  
		  return false;    
	}
	else if (blood==null || blood==""){  
	  alert("blood can't be blank");  
		  return false;    
	}
    else if (age==null || age=="")
    	
    {  
	  alert("age can't be empty");  
	  		 return false;    
	 }
    else if(age<=18 ){
    	alert("age can't be less than 18 ");
    	return false;
    }
  /*  else if (age!=null)
    {
	
	   if (isNaN(num))
	   {  
		  document.getElementById("numloc").innerHTML="Enter Numeric value only";  
		
		}	
		else if(age<=18)
		{  
		  alert("Age must be greater than 18.");  
		    
		  }  
	   return false;  
    }*/
    else if(rdate==null || rdate==""){  
  	  alert("rdate can't be blank");  
  	  return false;  
  	  }  
    else if(city==null || city==""){  
    	  alert("city can't be blank");  
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
	
	else{  
	  return true;  
	  }  
	} 
</script> 
<body>a
	<br>
	<div align="center">
	<img src="Img/plasmadonation2.PNG" alt="plasma"  style="border: 5px solid #555"/><br/>	
	</div>
	<br>
	<br>
	<div class="container">

		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>Plasma</u>
				</h1>
				<div class="card-body">
									
						<form  action="user_PlasmaDonation" method="POST" name="myform" onsubmit="return validateform()">
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
								<label><h5>Blood Type:</h5><h6 style="Color:red;">*</h6></label> 
								<select class="form-control selectpicker"  name="blood">
                        <option value="null">select</option>
                        <option value="A +ve">A+ve</option>
                        <option value="B +ve">B+ve</option>
                         <option value="A -ve">A -ve</option>
                        <option value="B -ve">B -ve</option>
                         <option value="AB +ve">AB +ve</option>
                        <option value="AB -ve">AB -ve</option>
                            <option value="O +ve">O +ve</option>
                        <option value="O -ve">O -ve</option>
                    </select>
								
								
							</div>
							<div class="form-group">
								<label><h5>Age:</h5><h6 style="Color:red;">*</h6></label> <input type="number"
									class="form-control" name="age" 
									placeholder="Enter Age" /><span id="numloc"></span>
							</div>
							<div class="form-group">
								<label><h5>Date:</h5><h6 style="Color:red;">*</h6></label> <input type="date"
									class="form-control" name="rdate" 
									placeholder="Enter  Date" />
							</div>
							<div class="form-group">
								<label><h5>City:</h5><h6 style="Color:red;">*</h6></label> <input type="text"
									class="form-control" name="city" 
									placeholder="Enter City" />
							</div>
							
							<div class="form-group">
								<label><h5>Contact No:</h5><h6 style="Color:red;">*</h6></label> <input type="number"
									class="form-control" name="c_no" 
									placeholder="Enter Contact No:" /><span id="numcon"></span>
							</div>
							
							<div class="form-group">
								<label><h5>Pincode:</h5><h6 style="Color:red;"></h6></label> <input type="text" maxlength="6" 
									class="form-control" name="pincode"
									placeholder="Enter Pincode" /><span id="numpin"></span>
							</div>
												  <div class="form-group">
                    <label ><h5>Choose(Request/Donate):</h5><h6 style="Color:red;">*</h6></label>
                    <select class="form-control selectpicker"  id="status" name="status">
                        <option value="null">Nothing selected</option>
                        <option value="Donate">Donate</option>
                        <option value="Request">Request</option>
                    </select>
                </div>
							<div class="form-group">
							<!--  	<label><h7><B>Note:</B>Please fill this form only if you have had the virus in the past 3 months and are capable and willing of donating
								your plasma  by sharing your information to help other</h7></label> 
									-->
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
</body>
</html>
<%@ include file="footer.jsp" %>