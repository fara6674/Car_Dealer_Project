<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
   /*  /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0; */
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>

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
</html>