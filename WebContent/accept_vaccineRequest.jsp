 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="admin_header.jsp" %>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "covid";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from vaccine where id="+id;

rs = statement.executeQuery(sql);
while(rs.next()){
%>
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
	var proof=document.myform.proof.value;  
	var c_address=document.myform.c_address.value;  
	var c_pincode=document.myform.c_pincode.value;
	var p_date=document.myform.p_date.value;  
	var p_time=document.myform.p_time.value;
	 
	if (proof==null || proof==""){  
	  alert("ID proof can't be blank");  
	  return false;  
	}
	else if (c_address==null || c_address==""){  
		  alert("Center Address can't be blank");  
		  return false;  
		}
	else if (c_pincode==null || c_pincode==""){  
	  alert("center pincode can't be blank");  
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
	else if (p_date==null || p_date==""){  
		  alert("Date can't be blank");  
		  return false;  
		}	
	else if (p_time==null || p_time==""){  
	  alert("Time can't be blank");  
		  return false;  
	}
	else{  
	  return true;  
	  }  
	} 
</script> 
<body><br><br>
	<div class="container">

		<div class="row">
			<div
				class="col-lg-7 col-md-7 col-sm-7 container justify-content-center card">
				<h1 class="text-center">
					<u>Accept Vaccine Request</u>
				</h1>
				<div class="card-body">
							
					 		
						<form name="myform" action="Update_VaccineRequest.jsp" method="POST" onsubmit="return validateform()">
                           <div class="form-group">
							<input type="hidden" name="id" value="<%=rs.getString("id")%>">
								<label><h5>First Name:</h5></label> <input type="text"
									class="form-control" name="First Name" value="<%=rs.getString("firstName")%>"
									placeholder="Enter Last Name" />
							</div>
							<div class="form-group">
								<label><h5>Last Name:</h5></label> <input type="text"
									class="form-control" name="lastName" value="<%=rs.getString("lastname")%>"
									placeholder="Enter Last Name" />
							</div>
							<div class="form-group">
								<label><h5>Contact No:</h5></label> <input type="text"
									class="form-control" name="rdate" value="<%=rs.getString("c_no")%>"
									placeholder="Enter blood" />
							</div>
							
							<div class="form-group">
								<label><h5>Age:</h5></label> <input type="text"
									class="form-control" name="age"  value="<%=rs.getString("age")%>"
									placeholder="Enter Age" />
							</div>
							
						
							<div class="form-group">
								<label><h5>City:</h5></label> <input type="text"
									class="form-control" name="city" value="<%=rs.getString("city")%>"
									placeholder="Enter City" />
							</div>
							<div class="form-group">
								<label><h5>Pincode:</h5></label> <input type="text"
									class="form-control" name="pincode" value="<%=rs.getString("pincode")%>"
									placeholder="Enter Pincode" /><span id="numloc"></span>
							</div>
							
							<div class="form-group">
								<label><h5>Select Id Proof:</h5></label>
									<select class="form-control selectpicker"  id="proof" name="proof">
                        <option value="null">Nothing selected</option>
                        <option value="Adhaar(UID)">Adhaar(UID)</option>
                        <option value="Passport">Passport</option>
                        <option value="Ration Card with address">Ration Card with address</option>
                    	<option value="PAN Card">PAN Card</option>
                        </select>
							</div>
							
							<div class="form-group">
								<label><h5>Enter Center Address:</h5></label> <input type="text"
									class="form-control" name="c_address"
									placeholder="Enter Center Address" />
							</div>
							<div class="form-group">
								<label><h5>Center Pincode:</h5></label> <input type="text"
									class="form-control" name="c_pincode"
									placeholder="Enter Center Pincode" />
							</div>
							<div class="form-group">
								<label><h5>Vaccination Date:</h5></label> <input type="date"
									class="form-control" name="p_date"
									placeholder="Enter Vaccination Date" />
							</div>
							<div class="form-group">
								<label><h5>Visited Time:</h5></label> <input type="time"
									class="form-control" name="p_time"
									placeholder="Enter Visited Time" />
							</div>
							    <button type="submit" class="btn btn-primary btn-lg">Accept</button>
                        </form>
			

						
				</div>
			</div>
		</div>
	</div>

	
</body>
							
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>	
</html>
<%@include file="footer.jsp"%>