<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/covid";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");

String firstName=request.getParameter("firstName");
System.out.print(firstName);
String lastName=request.getParameter("lastName");
String age=request.getParameter("age");
String city=request.getParameter("city");
String rdate=request.getParameter("rdate");
String pincode =request.getParameter("pincode");
String blood=request.getParameter("blood");
String proof=request.getParameter("proof");
System.out.print(proof);
String sta="Accept";
String c_address=request.getParameter("c_address");
String c_pincode=request.getParameter("c_pincode");
String p_date=request.getParameter("p_date");
String p_time=request.getParameter("p_time");
String c_no=request.getParameter("c_no");
if(pincode != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(pincode);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update plasma_donation set proof=?,status=?,c_address=?,c_pincode=?,p_date=?,p_time=?,c_no=?,id=? where id="+id;
ps = con.prepareStatement(sql);

ps.setString(1,proof);  
ps.setString(2,sta);
ps.setString(3,c_address); 
ps.setString(4,c_pincode);
ps.setString(5,p_date);
ps.setString(6,p_time);
ps.setString(7,c_no);
ps.setString(8,id);

int i = ps.executeUpdate();
if(i > 0)
{
	   response.sendRedirect("Successfully.jsp");
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