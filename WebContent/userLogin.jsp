<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fight Covid-19</title>
</head>
<style type="text/css">
.page-holder {
  min-height: 100vh;
}

.bg-cover {
  background-size: cover !important;
}

.loginbtnDiv{
  display:flex;
}
body {
    background: #74ebd5;
    background: -webkit-linear-gradient(to right, #74ebd5, #ACB6E5);
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    min-height: 100vh;

}
</style>

<script>
function validateform(){  
	var name=document.myform.name.value;  
	var password=document.myform.password.value;  

	 
	if (name==null || name==""){  
	  alert("username can't be blank");  
	  return false;  
	}
	else if (password==null || password==""){  
		  alert("password can't be blank");  
		  return false;  
		}

	else{  
	  return true;  
	  }  
	}  
</script>
<body>


<!--<div style="background: url(https://www.esri.com/about/newsroom/wp-content/uploads/2020/03/JH_Dashboard_Map.jpg)" class="page-holder bg-cover">-->

<br>
<br>
<!-- <div>
	<h1 class="text-center" style="color:#ffffff;"><u>User Sign In</u></h1><br/>
	<div> -->

<section id="cover" class="min-vh-100">
   		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				
				<div class="card-body">
                    <div class="px-2">
                    <br>
                    <h1 class="text-center" style="color:#212529;"><u>User Sign In</u></h1><br/>
                       <form name="myform" action="user_login"  method="post" class="justify-content-center" onsubmit="return validateform()">
                             <div class="form-group">
                                <label class="sr-only">Enter Username</label>Enter Username
                                <input type="text" class="form-control" placeholder="Enter Username" name="name" required>
                            </div>
                           
                            <div class="form-group">
                                <label class="sr-only">Enter Password</label>Enter Password
                                <input type="password" class="form-control" placeholder="Enter Password" name="password" required>
                            </div>
                            
                             <div class="loginbtnDiv">
                             <button type="submit" class="btn btn-primary btn-lg">Sign In</button>
                             <a href="forgetpassword.jsp" class="dropdown-item">Forget Password</a><br>
                             </div>                            
                            <a href="userRegister.jsp">Sign Up(Create New Account)</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</section>
</body>
</html>
<%@ include file="footer.jsp" %>