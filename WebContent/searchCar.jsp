<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
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
    
    .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
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


<body>



<div class="container">
	<div class="row">
        <div class="col-md-6">
    		<h2>Custom search field</h2>
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                <form method="get" action="SearchServlet">
                    <input type="text" class="form-control input-lg" placeholder="Search by Make, Model, Color or Year" name="make" />
                    <span class="input-group-btn">
                         <button class="btn btn-info btn-lg" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                      
                        </form>
         
                    </span>
                </div>
            </div>
        </div>
        
        
        <div class="row">
        <div class="col-md-6">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    
                </div>
            </div>
        </div>
        
        
        
	</div>
</div>
                                   <!--  start loop -->

                     	<c:forEach var="car" items="${maker}">
                     	
                       	

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
				<div class="btn btn-danger"><span>$</span>${car.price }</div>
			</div>
			<div class="">
				<a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Buy Now </button></a>	
				
				<a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Buy Now </button></a>	
				
				
				<a href="DetailsServlet?vinNumber=${car.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">See Details </button></a>
				
			</div>
			<br>
		</div>
		
	</c:forEach>
	
	<!--  end loop -->

</body>

<footer class="footer">

  <p>Copyright &copy; K & F Express, LLC 2018</p>
 
</footer>
</html>
