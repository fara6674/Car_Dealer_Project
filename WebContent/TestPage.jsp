<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.user.Car"%>
<%@page import="com.carservlet.CarServlet"%>

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
 
  <link rel="stylesheet" type="text/css" href="./styles/blue_white-widgets.css">
  <link rel="stylesheet" type="text/css" href="./styles/blue_white.css">
   <link rel="stylesheet" type="text/css" href="./styles/custom.css">
    <link rel="stylesheet" type="text/css" href="./styles/font-face-default.css">
     <link rel="stylesheet" type="text/css" href="./styles/widget.css">
 
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
<!-- </head> -->





<div>

<video width=100% height=100% autoplay="" loop="" muted="" >

<source src=".\\images\\Acura.mp4" type="video/mp4">

</video>
</div> 

<br><br>
 

 <br><br>
 
 
<div class="page-bd" data-page-body="">
<div class=" ddc-content content-default" data-widget-name="content-default" data-widget-id="content1">
<div class="content">
Motor City Auto Sales provides a selection of Featured Inventory, representing new and popular items at competitive prices. Please take a moment to investigate these current highlighted models, hand-picked from our ever-changing inventories! 
</div>
</div>

 <!-- 
 
<div class="ddc-content inventory-featured-default inventory-featured-full-page" data-widget-name="inventory-featured-default" data-widget-id="inventory-featured1">
<div class=" yui3-g">
<div class="yui3-u-1-2">
<div class="type-1 ddc-content" data-widget-id="inventory-featured1">
<div class="hproduct [content] auto" data-internetprice="MjQ5OTUuMA==" data-msrp="Mjk5OTUuMA==" data-vin="WBADW3C51DJ527065" data-make="BMW" data-model="328i" data-year="2013" data-bodystyle="Convertible" data-trim="328i" data-exteriorcolor="Jet Black" data-index-position="1" data-type="used">
<div>
<div class="media">
<a href="/used/BMW/2013-BMW-328i-304e75be0a0e0ae8294096d1a16ed8b4.htm">
<img src=".\\images\\car1.jpg" alt="2013 BMW 328i 328i Convertible" title="2013 BMW 328i 328i Convertible" class="photo thumb">
</a>
</div>
<h3 class="fn  "><a class="url" href="/used/BMW/2013-BMW-328i-304e75be0a0e0ae8294096d1a16ed8b4.htm"> 2013 BMW 328i 328i Convertible</a></h3>
<ul class="pricing  multiple-prices has-eprice list-unstyled">
<li><span class="salePrice"><span class="label">Original Price<span class="separator">:</span></span><span class="value">$29,995</span></span></li>
<li><span class="abSub"><span class="label">Dealer Discount<span class="separator">:</span></span><span class="value">$5,000</span></span></li>
<li><span class="internetPrice final-price"><span class="label">Price<span class="separator">:</span></span><span class="value">$24,995</span></span></li>
</ul>
<div class="description">
<span><strong>Engine</strong>: 3.0L I-6 cyl</span><span class="separator">,</span> <span><strong>Transmission</strong>: Automatic</span><span class="separator">,</span> <span><strong>Mileage</strong>: 31,219 miles</span><span class="separator">,</span> <span><strong>Exterior Color</strong>: Jet Black</span><span class="separator">,</span> <span><strong>Interior Color</strong>: Oyster/Black</span>
<div class="calloutDetails">

</div>
<div class="hproductDynamicArea"></div>
</div>
<a class="btn btn-primary btn-block view-link " href="/used/BMW/2013-BMW-328i-304e75be0a0e0ae8294096d1a16ed8b4.htm">
View Details
</a>
</div>
</div>
</div>
</div>
 -->
<!-- new car start -->

 <c:forEach var="car" items="${car}">

 <div class="yui3-u-1-2">
<div class="type-1 ddc-content" data-widget-id="inventory-featured1">
<div class="hproduct [content] auto" data-internetprice="MTU5OTUuMA==" data-msrp="MC4w" data-vin="WBAXH5C57CDW02464" data-make="BMW" data-model="528i xDrive" data-year="2012" data-bodystyle="Sedan" data-trim="528i xDrive" data-exteriorcolor="Dark Graphite II" data-index-position="2" data-type="used">
<div>
<div class="media">
<a href="">
<img src=".\\images\\car3.jpg" alt="2012 BMW 528i xDrive 528i xDrive Sedan" title="2012 BMW 528i xDrive 528i xDrive Sedan" class="photo thumb">
</a>
</div>
<h3 class="fn  "><a class="url" href="/used/BMW/2012-BMW-528i+xDrive-304f6dfb0a0e0a175837ce58e8b78dba.htm"> 2012 BMW 528i xDrive 528i xDrive Sedan</a></h3>
<ul class="pricing  multiple-prices has-eprice list-unstyled">
<li><span class="salePrice"><span class="label">Original Price<span class="separator">:</span></span><span class="value">$22,995</span></span></li>
<li><span class="abSub"><span class="label">Dealer Discount<span class="separator">:</span></span><span class="value">$7,000</span></span></li>
<li><span class="internetPrice final-price"><span class="label">Price<span class="separator">:</span></span><span class="value">$15,995</span></span></li>
</ul>
<div class="description">
<span><strong>Engine</strong>: 2.0L I-4 cyl</span><span class="separator">,</span> <span><strong>Transmission</strong>: Automatic</span><span class="separator">,</span> <span><strong>Mileage</strong>: 94,289 miles</span><span class="separator">,</span> <span><strong>Exterior Color</strong>: Dark Graphite II</span><span class="separator">,</span> <span><strong>Interior Color</strong>: Everest Gray</span>
<div class="calloutDetails">
<ul class="list-unstyled">
</ul>
</div>
<div class="hproductDynamicArea"></div>
</div>
<a class="btn btn-primary btn-block view-link " href="/used/BMW/2012-BMW-528i+xDrive-304f6dfb0a0e0a175837ce58e8b78dba.htm">
View Details
</a>
</div>
</div>
</div>
</div>
</div>
</c:forEach>
 

</body>

<footer class="footer">

  <p>Copyright &copy; K & F Express, LLC 2018</p>
 
</footer>
</html>