<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.databasecon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>vaccine security </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: vaccine security 
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/vaccine security -free-multipurpose-one-page-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
    .container{
        text-align: center;
        color: black
           
    }
</style>
</head>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="fixed-top d-flex align-items-center ">
    <div class="container ">
     
        <center><h3><b>vaccine security </b></h3></center>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex align-items-center justify-content-between">

      <h4 class="logo"><a href="index.html">vaccine security </a></h4>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href=index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
       <ul>
          <li><a class="nav-link scrollto " href="distb.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="distv.jsp">View Vaccine</a></li>
           <li><a class="nav-link scrollto active" href="dstatus.jsp">Status</a></li>
           <li><a class="nav-link scrollto " href="logout.jsp">Logout</a></li>
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
 <%
   // String email=session.getAttribute("email").toString();
        String id=request.getParameter("id");
       try{ 
	
        Connection co = databasecon.getconnection();
        PreparedStatement pst=co.prepareStatement("SELECT *  FROM av  where id='"+id+"'");
        ResultSet rs=pst.executeQuery();
       
      
      %>
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" data-bs-interval="5000" class="container carousel carousel-fade" data-bs-ride="carousel">

      <!-- Slide 1 -->
    
<center><br>
<!--    <h1 style="color:white;margin-bottom: 50%"><b>vaccine security </b></h1><br>-->
     <center><br>
                           
                                <h6 style="color:white">View Vaccine</h6><br>
                                
<table class="table table-striped" style="width:80%;margin-bottom: 60%">
  <thead>
    <tr>
        <th scope="col">ID</th>
      <th scope="col">Vaccine</th>
      <th scope="col">Owner</th>
      <th scope="col">Description</th>
      <th scope="col">Image</th>
        <th scope="col">BChain</th>
      <th scope="col">Supervisor</th>
      <th scope="col">CDC</th>
      <th scope="col">Distributor</th>
      <th scope="col">User</th>
    </tr>
  </thead>
   <%
        while(rs.next()){
        %>
  <tbody>
    <tr>
        <td><%=rs.getInt(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><img src="assets/img/<%=rs.getString(5)%>" style="width:100px;height:100px;"></td>
       <td><%=rs.getInt(6)%></td>
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(9)%></td>
        <td><%=rs.getString(10)%></td>
      </tr>
  </tbody>
   <%
        }
        %>
</table>
      <% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>                         
           
                              
                            </center>
                            </center>
    
      <!-- Slide 3 -->
     

     

    </div>
  </section><!-- End Hero -->

  <main id="main">

   
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>