<!DOCTYPE html>
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
<br>

<legend>
	<h2>
		<b>Welcome To Registration Page !!!</b>
	</h2>
</legend>




	
</head>
<body>


	<form Servlet: action="RegistrationServlet" method="post">

		<form class="container">

			<div class="container">



				<form class="container" action="RegistrationServlet" method="post">
					<div class="form-group">
						<label for="firstName">First Name</label>
						<input type="text" class="form-control" name="firstName"
							id="firstName" placeholder="First Name">
					</div>
					<div class="form-group">
						<label for="lastName">Last Name</label> <input type="text"
							class="form-control" name="lastName" id="lastName"
							placeholder="Last Name">
					</div>
					<div class="form-group">
						<label for="email">Email address</label> <input type="text"
							class="form-control" name="email" id="exampleInputEmail1"
							placeholder="Email">
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" name="password"
							id="password" placeholder="Password">
					</div>
					<br><b>Address:</b><br>
					<div class="form-group">
						<label for="street">Street</label> <input type="text"
							class="form-control" name="street" id="street"
							placeholder="Street">
					</div>
					<div class="form-group">
						<label for="city">City</label>
						<input type="text" class="form-control" name="city" id="city"
							placeholder="City">
					</div>
					<div class="form-group">
						<label for="state">State</label> <input type="text"
							class="form-control" name="state" id="state" placeholder="State">
					</div>
					<div class="form-group">
						<label for="zipCode">Zip Code</label> <input type="text"
							class="form-control" name="zipCode" id="zipCode"
							placeholder="Zip Code">
					</div>

					
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<br><br>
				
		
		
		<footer class="container-fluid text-center">
  <p class="m-0 text-center text-white">Copyright &copy; K & F Express 2018</p>
  
</footer>	
</body>

</html>
