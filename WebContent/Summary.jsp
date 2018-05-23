<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<div class="jumbotron text-xs-center">
  <h3 class="display-3">Thank You For Your Purchase. Find Your Purchase Summary Below !</h3>
  <!-- <p class="lead"><strong>Please check your email</strong> for further instructions on how to complete your account setup.</p> -->
  <hr>
 
</div>

  <!--REVIEW ORDER-->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Purchase Summary <div class="pull-right"></div>
                        </div>
                        
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-3 col-xs-3">
                                    <img class="img-responsive" src="${carDetail.image}" />
                                </div>
                                <div class="col-sm-6 col-xs-6">
                                    <div class="col-xs-12"><b> Vehicle Name</b></div>
                                    <div class="col-xs-12">${carDetail.make} ${carDetail.model}</div>
                                </div>
                                <div class="col-sm-3 col-xs-3 text-right">
                                    <h5><span>Price  $</span>${carDetail.price}</h5>
                                </div>
                            </div>
                            
                                                     
                            <div class="form-group"><hr /></div>
                            
                                <div class="col-xs-12">
                                    
                                    <div class="pull-right"> <strong> Order Total:</strong> <span>$</span><span>${carDetail.price}</span></div>
                                </div>
                            
                        </div>
                    </div>
                    <!--REVIEW ORDER END-->
                    
                     
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="index.jsp" role="button">Continue to homepage</a>
  </p>
         </body>
         <footer class="footer">

  <p>Copyright &copy; K & F Express, LLC 2018</p>
 
</footer>
</html>