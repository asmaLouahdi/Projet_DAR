<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Accueil</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/grayscale.min.css" rel="stylesheet">
<link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
   
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login.jsp">sign IN</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="register.jsp">Sign UP</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#signup">Contact_ NOUS</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container d-flex h-100 align-items-center">
        <div class="mx-auto text-center">
          <h1 class="mx-auto my-0 text-uppercase">Welcome to Animals world</h1>
          <h2 class="text-white-50 mx-auto mt-2 mb-5">notre site ....</h2>
          <a href="#about" class="btn btn-primary js-scroll-trigger">Learn More</a>
        </div>
      </div>
    </header>

    <!-- About Section -->
    
    <!-- Projects Section -->
  

    <!-- Signup Section -->
   
      <section>
      	<%@ page import="java.util.List" %>
      	<%@ page import="model.bo.Comment" %>
      	<%@ page import="java.util.ArrayList" %>
      	
      	<%!List<Comment> comments = new ArrayList<Comment>(); %>
		<% comments=(List<Comment>)request.getAttribute("listeComments");%>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/01.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
               <h6 class="display-4">Top Comment 1: <%= comments.get(0).getName() %>  </h6>
            
            <p> 		  <%= comments.get(0).getDescription() %>  </p>
	  <c:forEach var = "i" begin = "1" end = "<%=comments.get(0).getMark() %>">
         <span class="fa fa-star checked"></span>
      </c:forEach>
      <c:forEach var = "i" begin = "<%=comments.get(0).getMark() + 1 %>" end = "5">
         <span class="fa fa-star"></span>
      </c:forEach>
                  
              </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/02.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6">
            <div class="p-5">
             <h5 class="display-4"><small>Top Comment 2: <%= comments.get(1).getName() %> <%=comments.get(1).getMark() %>  </small></h5>
            
              <p> <%= comments.get(1).getDescription() %> 

	  <c:forEach var = "i" begin = "1" end = "<%=comments.get(1).getMark() %>">
         <span class="fa fa-star checked"></span>
      </c:forEach>
      <c:forEach var = "i" begin = "<%=comments.get(1).getMark() + 1 %>" end = "5">
         <span class="fa fa-star"></span>
      </c:forEach>
      
              </div>
          </div>
        </div>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 order-lg-2">
            <div class="p-5">
              <img class="img-fluid rounded-circle" src="img/03.jpg" alt="">
            </div>
          </div>
          <div class="col-lg-6 order-lg-1">
            <div class="p-5">
           
              <h5 class="display-4">Top Comment 3:<%= comments.get(2).getName() %> <%=comments.get(2).getMark() %>   </h6>
              <p> <%= comments.get(2).getDescription() %> 


</p>
	  <c:forEach var = "i" begin = "1" end = "<%=comments.get(2).getMark() %>">
         <span class="fa fa-star checked"></span>
      </c:forEach>
      <c:forEach var = "i" begin = "<%=comments.get(2).getMark() + 1 %>" end = "5">
         <span class="fa fa-star"></span>
      </c:forEach>

            </div>
          </div>
        </div>
      </div>
    </section>
   
    <!-- Contact Section -->
  

    <!-- Footer -->
    <footer class="bg-black small text-center text-white-50">
    
       SU, M2 STL 2018_2019
     
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/grayscale.min.js"></script>

  </body>

</html>
