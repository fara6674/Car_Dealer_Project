<!DOCTYPE html>
<html>
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
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="http://localhost:8080/CarProject/index.jsp">Home</a></li>
        <li><a href="CarServlet">Inventory</a></li>        <!-- this section will show/display all cars in inventory --> 
        <li><a href="deals.jsp">Deals</a></li>  		<!-- this section will display cars which is more than 120 days, 10% off -->
        <li><a href="sell.jsp">Sell Your Car</a></li>   <!-- this will give customer option to sell his/her used car to Dealership -->
        <li><a href="contact.jsp">Contact</a></li>          <!-- this is about us/ contact us page -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
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
						<lable for="firstName">First Name</lable>
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
						<lable for="password">Password</lable>
						<input type="password" class="form-control" name="password"
							id="password" placeholder="Password">
					</div>
					<br>Address<br>
					<div class="form-group">
						<label for="street">Street</label> <input type="text"
							class="form-control" name="street" id="street"
							placeholder="Street">
					</div>
					<div class="form-group">
						<lable for="city">City</lable>
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
