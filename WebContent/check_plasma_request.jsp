<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="user_header.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
 
	var c_no=document.myform.c_no.value;
	
	if (c_no==null || c_no==""||c_no.length<10){  
		  alert("Contact No can't be blank & must be at least 10 characters long.");  
		  return false;  
		}else if(c_no.length<10){  
		  alert("Password must be at least 10 characters long.");  
		  return false;  
		  }  
		}  

</script> 

<body>

<br><br>
 <div class="container">
		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>View Your Plasma Request</u>
				</h1>
				<div class="card-body">
					
						<form  action="get_plasma.jsp" method="POST" name="myform" onsubmit="return validateform()">
							<div class="form-group">
								<label><h5>Enter Phone No:</h5></label> <input type="text"
									class="form-control" name="c_no" 
									placeholder="Enter Phone No" /><span id="numloc"></span>
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