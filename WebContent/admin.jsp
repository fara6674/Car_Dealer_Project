<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="LogoutServlet">
		<input type="submit" value="Logout">

</form>
	

	<%
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revolidate"); //HTTP 1.1
	
	response.setHeader("Progma", "no-cache"); //HTTP 1.0
	
 	 if(session.getAttribute("UserName")==null)
 	 {
			request.getRequestDispatcher("login.jsp");
 	 }


     %>
 
 
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
<div class="row" >
   <div class="col-lg-12">
      <div class="page-header">
         <h2>Welcome to Inventory Administrator</h2>
      </div>
      <div style="text-align:right">
         <h4 style="padding-right:15em">Other Actions: </h4>
         <button type="button" class="btn btn-default btn-custom" >
             Add New Item</button>
             <button type="button" class="btn btn-default btn-custom" >
             Modify Stock Quantity</button>
      </div>
   </div>
</div>
<div class="row" style="background-color: #eeeeee;">
   <div class="col-lg-12">
      <h3>In-Stock Inventory</h3>
   </div>
</div>
<div class="row" style="background-color: #eeeeee;">
   <div class="col-lg-4 col-lg-offset-4">
      <div class="inner-addon left-addon">
         <i class="glyphicon glyphicon-search"></i>
         <input type="text" class="form-control" placeholder="Search all inventory..." />
      </div>
   </div>
   <div class="row">
      <div class="col-lg-12">
         <table class="table" id="table">
            <thead>
               <tr>
                  <th>VIN #</th>
                  <th>Vehicle Name </th>
                  <th>Quantity In Stock</th>
                  <th>Status</th>
                  <th>Price (USD)</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  <td>9826-231</td>
                  <td>${carDetail.make} ${carDetail.model}</td>
                  <td>2 / 0</td>
                  <td>Fork/Performance/Part</td>
                  <td><span>$</span>${carDetail.price}</td>
               </tr>
               <tr>
                  <td>6178-872</td>
                  <td>Continental Presta Valve 700c</td>
                  <td>5 / 15</td>
                  <td>Tube/Tire/Part</td>
                  <td>8.99</td>
               </tr>
               <tr>
                  <td>5173-612</td>
                  <td>Trek CrossRip 2</td>
                  <td>1 / 0</td>
                  <td>Complete Bike/Trek/Commuter</td>
                  <td>1579.99</td>
               </tr>
            </tbody>
         </table>
         <hr>
         
      </div>
   </div>
 </div>
</div>


</body>
</html>