<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@page import="com.user.Car"%><%@page
	import="com.carservlet.CarServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>K & F Express</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="./styles/styles.css">


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
<body >
	
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
	--%>
	<br>
	<br>
	<br>
	<br>
	
</body>
<footer class="footer"> 
<p>Copyright &copy; K & F Express, LLC 2018</p>
</footer>
</html>