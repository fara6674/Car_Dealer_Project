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


<br><br><br>


<div class="container"> 
<div class="row">
	



	<div class="col-sm-4">
			<div class="font-weight-bold">
      

 <div class="panel panel-primary">
      
				<div class="panel-heading">
			<b> <c:out value="${carDetail.make} ${carDetail.model}" /> </div> 	
				<div class="panel-body">
			Year: 	<c:out value="${carDetail.year}" />
			Color: 	<c:out value="${carDetail.color}" />
			Mile: <c:out value="${carDetail.mileage}"/>
				VIN #<c:out value="${carDetail.vinNumber}"/>
				<div></div>
				   </div></b>
					<img src="${carDetail.image}" width="400px" height="400px">
				</div>
				<div class="btn btn-danger"><span>$</span>${carDetail.price}</div>
			</div>
			<div class="">
			
			<br></br>
				<form action="BidServlet" method="get">
				<c:if test="${carDetail.getcarAge()}">
				<div>
				<input type="text" name="bidprice">
				<c:out value="${bidStatus}"></c:out>
				<input type = "hidden" name = "vinNumber" value="${carDetail.vinNumber}">
				<a href="DetailsServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Bid Offer </button></a>
				</div>
				</c:if>
				</form>
					<br></br>
			<a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Buy Now </button></a>	
				
			</div>
			
			<br>
		</div>

	
</div>
</div>

</body>

</html>