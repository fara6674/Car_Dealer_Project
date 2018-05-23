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
  <style>

    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: -1px;
      border-radius: 0;
      background-color: #000000;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
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

<br><br>

<!-- https://cdn.cgsociety.org/t/g57/636957/17669180_large.jpg
   http://wallpapersin4k.net/wp-content/uploads/2016/11/Ferrari-F12-Berlinetta-Car-Front-Wallpaper.jpg
   http://www.bestdreamcars.com/wallpapers/ferrari/ferrari_red_concept-widescreen_wallpapers.jpg
   https://wallscloud.net/uploads/cache/1014537310/428134-Kycb-1024x576-MM-90.jpg
   http://automenu.com.ua/cars/gallery/lamborghini/Lamborghini-Gallardo_LP570-4_Super_Trofeo_Stradale_2012_2.jpg
   http://shabier.com/images/red-car-wallpaper/red-car-wallpaper-13.jpg
    -->


<%-- 

    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">2018 Nissan Altima</div>
        <div class="panel-body"><img src="/images/car1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">2017 Ferrari 488</div>
        <div class="panel-body"><img src="image" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">2019 Toyota Camry</div>
        <div class="panel-body"><img src="image" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">2017 BMW 800i L</div>
        <div class="panel-body"><img src="image" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">2018 Lambargini 999 </div>
        <div class="panel-body"><img src=<%car. %> class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>

 <!--  <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div> -->

    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">2019 Honda Accord </div>
        <div class="panel-body"><img src="image" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br><br>
 --%>


<%-- <%java.util.ArrayList<Car> cars = (ArrayList<Car>)session.getAttribute("cars"); %> --%>
<%-- <%java.util.ArrayList<com.user.Car> cars= (java.util.ArrayList<com.user.Car>)session.getAttribute("cars"); %> --%>


<!-- <div style="position: absolute; z-index: -1; top: 0px; left: 0px; bottom: 0px; right: 0px; overflow: hidden; background-size: cover; background-color: transparent; background-repeat: no-repeat; background-position: 50% 50%; background-image: none;"><video autoplay="" loop="" muted="" style="margin: auto; position: absolute; z-index: -1; top: 50%; left: 50%; transform: translate(-50%, -50%); visibility: visible; opacity: 1; width: auto; height: 702px;">
<source src="https://3a73912591e33a34c7ec-0b2c97842f44191203c9b45228f673bc.ssl.cf1.rackcdn.com/frankletaacura/LetaAcura.mp4" type="video/mp4"><source src="https://3a73912591e33a34c7ec-0b2c97842f44191203c9b45228f673bc.ssl.cf1.rackcdn.com/frankletaacura/LetaAcura.webm" type="video/webm"></video></div>


<br><br><br><br><br><br> -->




<div class="container"> 
<div class="row">
	<c:forEach var="car" items="${car}">



	<div class="col-sm-4">
			<div class="font-weight-bold">
      
    
 <div class="panel panel-primary">
      
				<div class="panel-heading">
			<b> <c:out value="${car.make} ${car.model}" /> </div> 	
				<div class="panel-body">
				<c:out value="${car.year}" />
				<c:out value="${car.color}" />
				<c:out value="${car.mileage}"/>
				<c:out value="${car.vinNumber}"/>
				<div></div>
				   </div></b>
					<a href="DetailsServlet?vinNumber=${car.vinNumber}"><img src="${car.image}" width="360px" height="360px"></a>
				</div>
				<%-- <div class="btn btn-danger"><span>$</span>${car.price }</div> --%>
			</div>
			<div class="">
				<a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Buy Now </button></a>	
				
				<%-- <a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Buy Now </button></a>	
				 --%>
				
				<a href="DetailsServlet?vinNumber=${car.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">See Details </button></a>
				
			</div>
			<br>
		</div>
	</c:forEach>
	
</div>
</div>

<footer class="container-fluid text-center">
  <p class="m-0 text-center text-white">Copyright &copy; K & F Express 2018</p>
 
</footer>

</html>
