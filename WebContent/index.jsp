<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
</head>
<style>

/*.bs-example{
    margin: 20px;
}*/
body{
  margin: 0;
  padding: 0;
  
    background: #74ebd5;
    background: -webkit-linear-gradient(to right, #74ebd5, #ACB6E5);
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    min-height: 100vh;

}
.box1 h1{
    font-family:'Times New Roman', Times, serif;
    color: gold;
}

.box1{
    width: 100%;
    height: 300px;
    background-color:rgb(16, 16, 83);
    
}
.search-box{
    position:absolute;
    transform: translate(-50%,-50%);
    background: white;
    height: 40px;
    border-radius: 40px;
    padding: 10px;
    top: 25%;
    left: 15%;
}
.search-btn{
    color:black;
    float:right;
    width: 20px;
    height: 30px;
    border-radius: 50%;
    background:white;
    display:flex;
    justify-content: center;
    align-items: center;

}
.search-txt{
    border: none;
    background: none;
    outline: none;
    float: left;
    padding: 0;
    color: black;
    font-size: 16px;
    transition: 0.4s;
    line-height: 20px;
}
.line{
    border-left:2px solid white;
    height: 250px;
    position: absolute;
    left: 50%;
    margin-left: -4px;
    top: 78px;
}
 .inner-div{
  /*float :right;*/
  width: 400px;
  height: auto;
  background: beige;
  /*margin-right: 50px;*/
  position:absolute;
  right:150px;
  bottom: 380px;
  padding: 17px;
  border-radius: 12px;
 
}
.wrapper{
  width: 400px;
  background: none;
  padding: 30px;
}
.wrapper .input-data{
  height: 30px;
  width: 100%;
  position: relative;
  
}

.wrapper .input-data input{
  height: 100%;
  width: 100%;
  border: none;
  font-size: 17px;
  border-bottom: 2px solid grey;
  background: none;
}
.input-data input:focus ~ label,
.input-data input:valid ~ label{
transform: translateY(-20px);
font-size: 15px;
color:grey;
}

.wrapper .input-data label{
  position: absolute;
 left: 0;
  color: grey;
  pointer-events: none;
  transition: all 0.3s ease;
}
.btn1{
width: 200px;
height: 40px;
font-size: 20px;
background-color: rgb(16, 16, 83);
color: white;
border-radius: 12px;
position:relative;
right: -80px;

}

.box2{
    width: 100%;
    height: 420px;
   
}
.container1{
  position: relative;
  width: 1200px;
  height: 300px;
  margin: 2px auto;
  background: none;
  

}
.container1 .rect{
  position: relative;
  width: calc(400px - 30px);
  height: calc(270px - 30px);
  background: rgb(16, 16, 83);
  float: left;
  margin: 15px;
  box-sizing: border-box;
  margin-top: 30px;
  border-radius: 20px;
  padding: 2px;
}

.btn2{
  width: 500px;
height: 40px;
font-size: 20px;
background-color:rgb(16, 16, 83);
color:white;
margin-left: 200px;

}
.book{
  width: 120px;
  position: relative;
  bottom: 38px;
  left: 30px;
  clip-path: circle();
  margin-left: 100px;
  

}


.container1 .rect{
  box-shadow:5px 5px rgb(84, 84, 207);
}


.footer{
  background: #252525;
  color:white;
  list-style-type: none;
    text-decoration:none;
    transition: color .2s;
  font-size: 25px;
  
}
  
.navbar-nav {
    margin-left: auto;
 }
</style> 
<body>

<div><center>
<img src="Img/vaccine-infographic-desktop.jpg">
</center></div>


 <div class="box2"><br>
    <h2 style="color:black;font-family: 'Times New Roman', Times, serif; text-align: center;left: 42%;right: 40%;position: absolute;"> How it Works </h2>
<br><br>

      <div class="container1">
        <div class="rect">
          <div class="rect-img">
            <img src="Img/book.jpg" class="book" alt="book">
          </div>
          <h6 style="text-align: center; color: white;">REGISTER YOURSELF</h6>
          <p style="color: white; text-align: center;">Register using your mobile no. or Aadhar card no. or any other Identity docs. </p>
        </div>
        <div class="rect">
          <div class="rect-img">
            <img src="Img/2.jpg" class="book" alt="book">
          </div>
          <h6 style="text-align: center; color: white;">CHOOSE LOCATION</h6>
          <p style="text-align: center; color: white;">Select your nearby center for vaccination.</p>
        </div>
        <div class="rect">
          <div class="rect-img">
            <img src="Img/cert.jpg" class="book" alt="book" >
          </div>
          <h6 style="text-align: center; color: white;">CONFIRM YOUR SLOT</h6>
          <p style="color: white; text-align: center;">Book your slot to get the vaccine.</p>
        </div>
      </div>




    <br>
    
  <center>
  <button class="btn2"><a href="Dos_Dont.jsp" >Do's and Don'ts</a></button> 
 
 </center>
  </div><br><br>

</body>
</html>
<%@ include file="footer.jsp" %>