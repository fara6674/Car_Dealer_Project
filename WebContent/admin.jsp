<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>K & F Express</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" type="text/css" href="./styles/styles.css">
 
 
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <!--  <a class="navbar-brand" href="#">Logo</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="http://localhost:8080/CarProject/index.jsp">Home</a></li>
        <li><a href="CarServlet">Inventory</a></li>        <!-- this section will show/display all cars in inventory --> 
        <li><a href="searchCar.jsp">Search Your Car</a></li>   <!-- this will give customer option to search for car -->
        <li><a href="contact.jsp">Contact</a></li>          <!-- this is about us/ contact us page -->
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      <div id="google_translate_element"></div><script type="text/javascript">
      
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

        <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
     
      </ul>
    </div>
  </div>
  
</nav>
<form action="LogoutServlet">
		<input type="submit" value="Logout">

</form>
	

	<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revolidate"); //HTTP 1.1
	
	response.setHeader("Progma", "no-cache"); //HTTP 1.0
	
 	 if(session.getAttribute("UserName")==null)
 	 {
			request.getRequestDispatcher("login.jsp");
 	 }


     %>
 
 
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
<div class="row" >
   <div class="col-lg-12">
      <div class="page-header">
         <h2>Welcome to Inventory Administrator</h2>
      </div>
      <div style="text-align:right">
         <h4 style="padding-right:15em">Other Actions: </h4>
         <button type="button" class="btn btn-default btn-custom" >
             Add New Item</button>
             <button type="button" class="btn btn-default btn-custom" >
             Modify Stock Quantity</button>
      </div>
   </div>
</div>
<div class="row" style="background-color: #eeeeee;">
   <div class="col-lg-12">
      <h3>Sold Car Inventory</h3>
   </div>
</div>

   <div class="row">
      <div class="col-lg-12">
         <table class="table" id="table">
            <thead>
               <tr>
                  <th>Vehicle Name</th>
                  <th>VIN #</th>
                  <th>Year</th>
                  <th>Color</th>
                  <th>Mile</th>
                  <th>Price (USD)</th>
               </tr>
            </thead>
            <tbody>
            
            <c:forEach var="admin" items="${admin}">
            
               <tr>
                  <td>${admin.make} ${admin.model}</td>
                  <td>${admin.vinNumber}</td>
                  <td>${admin.year}</td>
                  <td>${admin.color}</td>
                  <td>${admin.mileage}</td>
                  <td><span>$</span>${admin.price}</td>
               </tr>
               </c:forEach>
               
                              
            </tbody>
         </table>
         <hr>
         
      </div>
   </div>
 </div>
 <style>
 body {
    background-color: #e6f7ff	;
}
</style>
</body>
<footer class="footer">
  <p class="m-0 text-center text-white">Copyright &copy; K & F Express 2018</p>
 
</footer>
</html>