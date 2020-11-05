<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  %>
<%@ include file="InnovationSuite.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Vyomlabs PVT. LTD.</title>


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>MY DASHBOARD</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>

  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start--> <a href="index.html" class="logo"><b>MY<span>DASHBOARD</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="index.html#"> <i
                class="fa fa-tasks"></i> <span class="badge bg-theme">4</span>
            </a>
            <ul class="dropdown-menu extended tasks-bar">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li><a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                      aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a></li>
              <li><a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                      aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a></li>
              <li><a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                      aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a></li>
              <li><a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70"
                      aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a></li>
              <li class="external"><a href="#">See All Tasks</a></li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <!-- <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-envelope-o"></i>
              <span class="badge bg-theme">5</span>
            </a>
            <ul class="dropdown-menu extended inbox">
              <div class="notify-arrow notify-arrow-green"></div>
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-zac.jpg"></span>
                  <span class="subject">
                    <span class="from">Zac Snider</span>
                    <span class="time">Just now</span>
                  </span>
                  <span class="message">
                    Hi mate, how is everything?
                  </span>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-divya.jpg"></span>
                  <span class="subject">
                    <span class="from">Divya Manian</span>
                    <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                    Hi, I need your help with this.
                  </span>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-danro.jpg"></span>
                  <span class="subject">
                    <span class="from">Dan Rogers</span>
                    <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                    Love your new Dashboard.
                  </span>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="img/ui-sherman.jpg"></span>
                  <span class="subject">
                    <span class="from">Dj Sherman</span>
                    <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                    Please, answer asap.
                  </span>
                </a>
              </li>
              <li>
                <a href="index.html#">See all messages</a>
              </li>
            </ul>
          </li> -->
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle"
              href="index.html#">
              <i class="fa fa-bell-o"></i> <span class="badge bg-warning">7</span>
            </a>
            <ul class="dropdown-menu extended notification">
              <div class="notify-arrow notify-arrow-yellow"></div>
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li><a href="index.html#"> <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded. <span class="small italic">4 mins.</span>
                </a></li>
              <li><a href="index.html#"> <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding. <span class="small italic">30
                    mins.</span>
                </a></li>
              <li><a href="index.html#"> <span class="label label-danger"><i class="fa fa-bolt"></i></span> Disk
                  Space Reached 85%. <span class="small italic">2 hrs.</span>
                </a></li>
              <li><a href="index.html#"> <span class="label label-success"><i class="fa fa-plus"></i></span> New
                  User Registered. <span class="small italic">3 hrs.</span>
                </a></li>
              <li><a href="index.html#">See all notifications</a></li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <!-- <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="login.html">Logout</a></li>
        </ul>
      </div> -->
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse background: #290658;">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered">
            <a href="profile.html"><img src="img/Allen.png" class="img-circle" width="80"></a>
          </p>
          <h5 class="centered"><%= uname%></h5>
          <li class="mt">
          <a class="active" href="Dashio_Home.jsp"> <i class="fa fa-dashboard"></i> 
          <span>Dashboard</span>
            </a>
            </li>
             <li class="sub-menu">
            <a href="AdvanceTable.jsp">
              <i class="fa fa-th"></i>
              <span>My Requests</span>
            </a>
            <!-- <ul class="sub">
              <li><a href="advanced_table.html">Advanced Table</a></li>
            </ul> -->
          </li>

          <li class="sub-menu"><a href="javascript:;"> <i class="fa fa-desktop"></i> <span>About Us</span>
            </a>

          </li>
          
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-9 main-chart">
            <!--CUSTOM SLIDER START -->
            <div class="custom-bar-chart">

              <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="img/slide1.jpg" alt="Loswe Angeles" style="width:100%;">
                  </div>

                  <div class="item">
                    <img src="img/slide2.jpg" alt="Chicago" style="width:100%;">
                  </div>

                  <div class="item">
                    <img src="img/slide3.jpg" alt="New york" style="width:100%;">
                  </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>

            </div>
            
            <!--CUSTOM SLIDER END-->

            <div class="row mt" style="margin-top: 10px;">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="darkblue-panel pn donut-chart">
                  <div class="darkblue-header">
                    <h5>MY TRAINING COMPLETION</h5>
                  </div>
                  <canvas id="serverstatus01" height="120" width="120"></canvas>
                  <script>
                    var doughnutData = [{
                      value: <%=completedWO%>,
                      color : "#FF6B6B"
								
							}, {
                      value: <%=openWO %>,
                        color : "#fdfdfd"

                    } ];

                    var myDoughnut = new Chart(document.getElementById(
                      "serverstatus01").getContext("2d"))
                      .Doughnut(doughnutData);


                    function openWin() {
                      window.open("https://www.google.com");
                    }
                  </script>
                  <div class="row">
                    <div class="col-sm-4 col-xs-4 col-lg-4 goleft">
                      <p>
                        Training<br />Completed:
                      </p>
                    </div>
                    <div class="col-sm-4 col-xs-4 col-lg-4">
                      <h2><%= completedWOavg%>%</h2>
                    </div>
                    <div class="col-sm-4 col-xs-4">
                      <button class="btn btn-small btn-theme04" onclick="openWin()">Visit</button>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>MY REQUESTS</h5>
                  </div>
                  <canvas id="serverstatus02" height="120" width="120"></canvas>
                  <script>
                    var doughnutData = [{
                      value: <%= openWO%>,
                      color : "#4e0b98"
							}, {
                      value: <%= completedWO %>,
                        color : "#fdfdfd"
                    } ];
                    var myDoughnut = new Chart(document.getElementById(
                      "serverstatus02").getContext("2d"))
                      .Doughnut(doughnutData);
                  </script>
                  <p><%= (new java.util.Date()).toLocaleString()%></p>
                  <div class="row"><!-- 
                    <div class="col-sm-4 col-xs-4 col-md-3 col-lg-4">
                      <h5>
                        <i class="fa fa-hdd-o"></i> 17
                      </h5>
                    </div> -->
                    <div class="col-sm-7 col-xs-7 col-md-7 col-lg-7">
                      <h6 style="color: #4e0b98;margin-right: -12px;"><%= openWOavg %>% In Progress</h6>
                    </div>
                    <div class="col-sm-3 col-xs-3">
                      <button class="btn btn-small btn-theme04" style="margin-top: -0px;margin-left: 7px;"
                        onclick="openWin()">Visit</button>
                    </div>
                  </div>
                </div>
                <!--  /darkblue panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <!-- REVENUE PANEL -->
                <div class="green-panel pn">
                  <div class="green-header">
                    <h5 style="color: white;">REQUEST TREND</h5>
                  </div>
                  <div class="chart mt">
                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%"
                      data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color=""
                      data-highlight-line-color="#fff" data-spot-radius="4"
                      data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
                  </div>
                  <div class="row" style="margin-top: 20px;">
                     <div class="mt col-sm-8 col-xs-8 col-md-6 col-lg-8">
                    <p>
                      <b>17</b><br />Monthly Requests
                    </p>
                    </div>
                    <div class="col-sm-2 col-xs-2">
                      <button class="btn btn-small btn-theme04" onclick="openWin()">Visit</button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
            <div class="row">
              <div class="col-lg-4 col-md-4 col-sm-4 mb openBtn" data-toggle="modal" data-target="#modalPush">

                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>SAP ADD USER ROLE</h5>
                  </div>
                  <img src="img/LandingPage.png" width="60%">
                </div>
              </div>
              
              <div class="col-md-4 col-sm-4 mb openBtn" data-toggle="modal" data-target="#modalPush">
                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>ADD USER TO AD/DL</h5>
                  </div>

                  <img src="img/AD.png" width="55%">

                </div>
              </div>

              <!--/ col-md-4 -->
              <div class="col-md-4 col-sm-4 mb openBtn" data-toggle="modal" data-target="#modalPush">
                <div class="darkblue-panel pn">
                  <div class="darkblue-header">
                    <h5>
                      SHARED FOLDER ACCESS5
                      </h4>
                  </div>
                  <img src="img/SharedAccess.png" width="70%">
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
			
            <div class="row">
			 <a href="https://selfservicehr.vyom-labs.com/SpineHRMS/login.aspx?ReturnUrl=%2fspinehrms%2fstartnew.aspx" target="blank">
              <!-- WEATHER PANEL -->
			  
              <div class="col-md-4 mb">
			 
                <div class="weather pn">
                  <i class="fa fa-users fa-4x"></i>
                  <h4>My HR Portal</h4>
								  
                </div>
				 </a>
              </div>
			 
              <!-- TWITTER PANEL -->
			  <a href="https://selfservicehr.vyom-labs.com/SpineHRMS/login.aspx?ReturnUrl=%2fspinehrms%2fstartnew.aspx" target="blank">
              <div class="col-md-4 mb">
                <div class="twitter-panel pn">
                  <i class="fa fa-rupee fa-4x"></i>
                  <h4>My financials</h4>
                </div>
				</a>
              </div>
              <!-- /col-md-4 -->
			   <a href="https://selfservicehr.vyom-labs.com/SpineHRMS/login.aspx?ReturnUrl=%2fspinehrms%2fstartnew.aspx" target="blank">
              <div class="col-md-4 mb">
                <!-- INSTAGRAM PANEL -->
                <div class="instagram-panel pn">
                  <i class="fa fa-laptop fa-4x"></i>
                  <h4>Vyomlabs Internal Portal</h4>
                </div>
				</a>
              </div>
              <!-- /col-md-4 -->
            </div>
            <div class="row">
              <!-- /col-md-4 -->
              <div class="col-md-4 mb">
                <!-- WHITE PANEL - TOP USER -->
				 <a href="https://selfservicehr.vyom-labs.com/SpineHRMS/login.aspx?ReturnUrl=%2fspinehrms%2fstartnew.aspx" target="blank">
                <div class="white-panel pn">
                  <h4>Book a Conference Room</h4>
                  <div class="row">
                    <div class="col-md-6">
                      <p class="small mt">Booked</p>
                      <p>10</p>
                    </div>
                    <div class="col-md-6">
                      <p class="small mt">Total Available</p>
                      <p>20</p>
                    </div>
                  </div>
                </div>
				</a>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 mb">
                <!-- Award PANEL -->
				 <a href="https://selfservicehr.vyom-labs.com/SpineHRMS/login.aspx?ReturnUrl=%2fspinehrms%2fstartnew.aspx" target="blank">
                <div class="award-panel pn">
                  <!-- <i class="fa fa-instagram fa-4x"></i> -->
                  <h4>Spot Awards</h4>
                </div>
				</a>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 mb">
                <!-- INSTAGRAM PANEL -->
				 <a href="https://selfservicehr.vyom-labs.com/SpineHRMS/login.aspx?ReturnUrl=%2fspinehrms%2fstartnew.aspx" target="blank">
                <div class="events-panel pn">
                  <h4>Upcoming Events</h4>
                </div>
				</a>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
          </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
          <div class="col-lg-3 ds" style="color: black;">
            <!--COMPLETED ACTIONS DONUTS CHART-->
            <div class="donut-main">
              <h4>Today's Requests</h4>
              <canvas id="newchart" height="130" width="130"></canvas>
              <script>
                var doughnutData = [{
                  value: 70,
                  color: "#b351f0"
                },
                {
                  value: 30,
                  color: "#fdfdfd"
                }
                ];
                var myDoughnut = new Chart(document.getElementById("newchart").getContext("2d")).Doughnut(doughnutData);
              </script>
            </div>
            <hr>
            <!-- RECENT ACTIVITIES SECTION -->
            <h4 class="centered mt">Outage And Unavailability</h4>
            <!-- First Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme04"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>Just Now</muted>
                  <br />
                  <!-- <a href="#">Paul Rudd</a> -->
                  Email service is down for maintenance.<br />
                </p>
              </div>
            </div>
            <!-- Second Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>2 Minutes Ago</muted>
                  <br />
                  HR spine is updated.<br />
                  <!-- <a href="#">James Brown</a>  -->
                </p>
              </div>
            </div>
            <!-- Third Activity -->
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme04"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>3 Hours Ago</muted>
                  <br />
                  <!-- <a href="#">Diana Kennedy</a> -->
                  Printer-P443 is unavailable. ETA 6PM Monday.<br />
                </p>
              </div>
            </div>

            <!-- USERS ONLINE SECTION -->
            <h4 class="centered mt">TEAM MEMBERS ONLINE</h4>
            <!-- First Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/ui-divya.jpg" width="35px" height="35px">
              </div>
              <div class="details">
                <p>
                  <a href="#">DIVYA MANIAN</a><br />
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            <!-- Second Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/ui-sherman.jpg" width="35px" height="35px">
              </div>
              <div class="details">
                <p>
                  <a href="#">DJ SHERMAN</a><br />
                  <muted>I am Busy</muted>
                </p>
              </div>
            </div>
            <!-- Third Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/ui-danro.jpg" width="35px" height="35px">
              </div>
              <div class="details">
                <p>
                  <a href="#">DAN ROGERS</a><br />
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            <!-- Fourth Member -->
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="img/ui-zac.jpg" width="35px" height="35px">
              </div>
              <div class="details">
                <p>
                  <a href="#">Zac Sniders</a><br />
                  <muted>Available</muted>
                </p>
              </div>
            </div>
          </div>
          <!-- /col-lg-3 -->
        </div>
        <!-- /row -->
      </section>
    </section>
    <!--main content end-->
    <!--footer start-->
    <!-- <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits"> -->
    <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
    <!-- Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
        </a>
      </div>
    </footer> -->
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>

  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  <script type="text/javascript">
    $(document)
      .ready(
        function () {
          var unique_id = $.gritter
            .add({
              // (string | mandatory) the heading of the notification
              title: 'Welcome to Dashio!',
              // (string | mandatory) the text inside the notification
              text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
              // (string | optional) the image to display on the left
              image: 'img/ui-sam.jpg',
              // (bool | optional) if you want it to fade out on its own or just sit there
              sticky: false,
              // (int | optional) the time you want it to be alive for before fading out
              time: 8000,
              // (string | optional) the class name you want to apply to that specific message
              class_name: 'my-sticky-class'
            });

          return false;
        });
  </script>
  <script type="application/javascript">


    $(document).ready(function () {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function (e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function () {
          return myDateFunction(this.id, false);
        },
        action_nav: function () {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
          type: "text",
          label: "Special event",
          badge: "00"
        },
        {
          type: "block",
          label: "Regular event",
        }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }


  </script>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>

  <!-- Button trigger modal-->


  <!--Modal: modalPush-->
  <div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-notify modal-info" role="document">
      <!--Content-->
      <div class="modal-content ">

        <!--Header-->
        <div class="modal-header d-flex justify-content-center" style="background: #915bcc">
          <p class="heading" style="color: white">Submit Request</p>
        </div>

        <!--Body-->
        <div class="modal-body"></div>

        <!--Footer-->
        <!-- <div class="modal-footer flex-center">
						<input type="submit" class="btn btn-info" value="Submit">
						<a type="button"
							class="btn btn-outline-info waves-effect" data-dismiss="modal">Close</a>
					</div> -->

      </div>
      <!--/.Content-->
    </div>
  </div>
  <!--Modal: modalPush-->


  <script>
    $(document).ready(function () {
      $(".openBtn").click(function () {
        $(".modal-body").load('sapAddRoleForm.html');
      });

    });
  </script>

  <script src="lib/toastr.js"></script>
  <link href="css/toastr.css" rel="stylesheet" />

</body>

</html>