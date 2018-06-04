<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.user.Car"%>
<%@page import="com.carservlet.CarServlet"%>


<html lang="en">
<head>
  <title>K & F Express</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" type="text/css" href="./styles/styles.css">
 
 <style>
* {
    box-sizing: border-box;
}

.column {
    float: middle; 
    width: 40.33%;
    padding: 5px;
    
}

/* Clearfix (clear floats) */
.row::after {
    content: "";
    clear: both;
    display: table;
}

body {
    background-color: black;
}
</style>
 
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




<%-- <%java.util.ArrayList<Car> cars = (ArrayList<Car>)session.getAttribute("cars"); %> --%>
<%-- <%java.util.ArrayList<com.user.Car> cars= (java.util.ArrayList<com.user.Car>)session.getAttribute("cars"); %> --%>


<!-- <div style="position: absolute; z-index: -1; top: 0px; left: 0px; bottom: 0px; right: 0px; overflow: hidden; background-size: cover; background-color: transparent; background-repeat: no-repeat; background-position: 50% 50%; background-image: none;"><video autoplay="" loop="" muted="" style="margin: auto; position: absolute; z-index: -1; top: 50%; left: 50%; transform: translate(-50%, -50%); visibility: visible; opacity: 1; width: auto; height: 702px;">
<source src="https://3a73912591e33a34c7ec-0b2c97842f44191203c9b45228f673bc.ssl.cf1.rackcdn.com/frankletaacura/LetaAcura.mp4" type="video/mp4"><source src="https://3a73912591e33a34c7ec-0b2c97842f44191203c9b45228f673bc.ssl.cf1.rackcdn.com/frankletaacura/LetaAcura.webm" type="video/webm"></video></div>


<br><br> -->

<div>
		<video width=100% height=100% autoplay="" loop="" muted=""> <source
			src=".\\images\\Acura.mp4" type="video/mp4"></video>
	</div>


<div class="page-bd" data-page-body="">
	
	<div class="row" align="middle";>
	<c:forEach var="car" items="${car}">
  <div class="column" >
   <a href="DetailsServlet?vinNumber=${car.vinNumber}"> <img src="${car.image}" alt="Fjords" style="width:100%">
   </a>
   
   
					<h3><em>	<a class="" href="DetailsServlet?vinNumber=${car.vinNumber}"> ${car.make} ${car.model}</a>
					</em></h3>
						<div>
				<a class="btn btn-primary view-link"
					href="DetailsServlet?vinNumber=${car.vinNumber}"> View Details
				</a>
			</div>
			</div>
			</c:forEach>
	</div>
	
	
  </div>


<br></br> <br></br>
</body>
<footer class="footer">

  <p>Copyright &copy; K & F Express, LLC 2018</p>
 
</footer>

</html>
