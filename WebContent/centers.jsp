<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@include file="user_header.html"%>
<html>
<head>
<style>
input[type="text"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:30%;	
	border-radius: 25px;
	margin-left:30%;
}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
 body {
    background: #74ebd5;
    background: -webkit-linear-gradient(to right, #74ebd5, #ACB6E5);
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    min-height: 100vh;

}
</style>
</head>

<script>  
function validateform(){  
 
	var pincode=document.myform.pincode.value;
	
	if (pincode==null || pincode==""||pincode.length<6){  
		  alert("pincode can't be blank & must be at least 6 characters long.");  
		  return false;  
		}else if(pincode.length<6){  
		  alert("Password must be at least 6 characters long.");  
		  return false;  
		  }  
		}  

</script> 


<body><br><br>

 <div class="container">
		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>Search Center</u>
				</h1>
				<div class="card-body">
					
						<form  action="get_centers.jsp" method="POST" name="myform" onsubmit="return validateform()">
							<div class="form-group">
								<label><h5>Enter Pincode:</h5></label> <input type="text"
									class="form-control" name="pincode" 
									placeholder="Enter Pincode" /> <span id="numloc"></span>
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
<%@include file="footer.jsp"%>