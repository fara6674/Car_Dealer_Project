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


<br><br><br>


<div class="page-bd" data-page-body="">
	
	<div class="row" align="center";>
      

 
			<b></b><h4 style="color:red"><c:out  value="${carDetail.make} ${carDetail.model}" /> Year: 	<c:out value="${carDetail.year}" />
			Color: 	<c:out value="${carDetail.color}" />
			Mile: <c:out value="${carDetail.mileage}"/>
				VIN #<c:out value="${carDetail.vinNumber}"/></h4> </div> 	
				
			
				<div></div>
				   </div>
				   <div class="column" >
					<img src="${carDetail.image}" alt="Fjords" style="width:100%">
				</div>
				<div class="btn btn-primary view-link"><span>$</span>${carDetail.price}</div>
			
			<div class="">
			
			<br></br>
				<form action="BidServlet" method="get">
				<c:if test="${carDetail.getcarAge()}">
				<div>
				<input type="text" name="bidprice">
				<c:out value="${bidStatus}"></c:out>
				<input type = "hidden" name = "vinNumber" value="${carDetail.vinNumber}">
				<a href="DetailsServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-primary view-link"  role="button">Bid Offer </button> 	
			</a>
				</div>
				</c:if>
				
				</form>
				<a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-primary view-link"  role="button">Buy Now </button></a>
					<br></br>
				
			</div>
			
<br></br> <br></br>
	

</body>
<footer class="footer">

  <p>Copyright &copy; K & F Express, LLC 2018</p>
 
</footer>
</html>