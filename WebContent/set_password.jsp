<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/covid";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String username = request.getParameter("username");
String password=request.getParameter("password");
String answer=request.getParameter("answer");
String security=request.getParameter("security");


if(username != null)
{
Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(username);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update user set password=? where answer=? and username=?";
ps = con.prepareStatement(sql);

ps.setString(1,password);  
ps.setString(2,answer);  
ps.setString(3,username); 

int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("userLogin.jsp");
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>