<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><%@page import="com.user.Car"%><%@page
	import="com.carservlet.CarServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
<title>K & F Express</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="./styles/styles.css">
<link rel="stylesheet" type="text/css" href="./styles/blue_white.css">

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
</script>

<body>

<h2 style="text-align:center">Slideshow Gallery</h2>

<div class="container">
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
    <img src=".\\images\\car1.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
    <img src=".\\images\\car2.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
    <img src=".\\images\\car3.jpg" style="width:100%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
    <img src=".\\images\\car4.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
    <img src=".\\images\\car5.jpg" style="width:100%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
    <img src=".\\images\\car6.jpg" style="width:100%">
  </div>
    
  <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row">
    <div class="column">
      <img class="demo cursor" src=".\\images\\car1.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
    </div>
    <div class="column">
      <img class="demo cursor" src=".\\images\\car2.jpg" style="width:100%" onclick="currentSlide(2)" alt="Trolltunga, Norway">
    </div>
    <div class="column">
      <img class="demo cursor" src=".\\images\\car3.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src=".\\images\\car4.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
    </div>
    <div class="column">
      <img class="demo cursor" src=".\\images\\car5.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
    </div>    
    <div class="column">
      <img class="demo cursor" src=".\\images\\car6.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
    </div>
  </div>
</div>
</body>

<!-- <style>
* {
	box-sizing: border-box;
}

.column {
	width: 33.33%;
	padding: 5px;
	align:center;
}

/* Clearfix (clear floats) */
.row::after {
	content: "";
	clear: both;
	display: table;
}
</style> -->

</head>
<body>
	
	<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	
	<!-- </head> -->
	<div>
		<video width=100% height=100% autoplay="" loop="" muted=""> <source
			src=".\\images\\Acura.mp4" type="video/mp4"></video>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div class="page-bd" data-page-body="">
		<!--  <div class=" ddc-content content-default" data-widget-name="content-default" data-widget-id="content1"></div> -->
		<!-- 
 
<div class="ddc-content inventory-featured-default inventory-featured-full-page" data-widget-name="inventory-featured-default" data-widget-id="inventory-featured1"><div class=" yui3-g"><div class="yui3-u-1-2"><div class="type-1 ddc-content" data-widget-id="inventory-featured1"><div class="hproduct [content] auto" data-internetprice="MjQ5OTUuMA==" data-msrp="Mjk5OTUuMA==" data-vin="WBADW3C51DJ527065" data-make="BMW" data-model="328i" data-year="2013" data-bodystyle="Convertible" data-trim="328i" data-exteriorcolor="Jet Black" data-index-position="1" data-type="used"><div><div class="media"><a href="/used/BMW/2013-BMW-328i-304e75be0a0e0ae8294096d1a16ed8b4.htm"><img src=".\\images\\car1.jpg" alt="2013 BMW 328i 328i Convertible" title="2013 BMW 328i 328i Convertible" class="photo thumb"></a></div><h3 class="fn  "><a class="url" href="/used/BMW/2013-BMW-328i-304e75be0a0e0ae8294096d1a16ed8b4.htm"> 2013 BMW 328i 328i Convertible</a></h3><ul class="pricing  multiple-prices has-eprice list-unstyled"><li><span class="salePrice"><span class="label">Original Price<span class="separator">:</span></span><span class="value">$29,995</span></span></li><li><span class="abSub"><span class="label">Dealer Discount<span class="separator">:</span></span><span class="value">$5,000</span></span></li><li><span class="internetPrice final-price"><span class="label">Price<span class="separator">:</span></span><span class="value">$24,995</span></span></li></ul><div class="description"><span><strong>Engine</strong>: 3.0L I-6 cyl</span><span class="separator">,</span><span><strong>Transmission</strong>: Automatic</span><span class="separator">,</span><span><strong>Mileage</strong>: 31,219 miles</span><span class="separator">,</span><span><strong>Exterior Color</strong>: Jet Black</span><span class="separator">,</span><span><strong>Interior Color</strong>: Oyster/Black</span><div class="calloutDetails"></div><div class="hproductDynamicArea"></div></div><a class="btn btn-primary btn-block view-link " href="/used/BMW/2013-BMW-328i-304e75be0a0e0ae8294096d1a16ed8b4.htm">
View Details
</a></div></div></div></div>
 -->
		<!-- new car start -->
<%-- 		<div class="row">
		<c:forEach var="car" items="${car}">
			<div class="col-sm-4">
				
					<div class="font-weight-bold">
						 <a href=""> <img src="${car.image}" width="500px"
							height="500px" alt="">
						</a>
					
					<h3 class="  ">
						<a class="" href=""> ${car.make} ${car.model}</a>
					</h3>
					
			<div>
				<a class="btn btn-primary view-link"
					href="DetailsServlet?vinNumber=${car.vinNumber}"> View Details
				</a>
			</div>
			</div>
	</div>
	
	</c:forEach>
	</div>
</body>
--%>
<footer class="footer"> 
<p>Copyright &copy; K & F Express, LLC 2018</p>
</footer>
</html>