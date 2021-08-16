<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SparksBank.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TSF BANK</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
     <form id="form1" runat="server">
  <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">TSF BANK</a>
            </div>

            <div class="header-right">

                
            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.png" class="img-thumbnail" />

                            <div class="inner-text">
                                Salman Khan
                            <br />
                                <small>Last Login : Yesterday </small>
                            </div>
                        </div>

                    </li>


                    <li>
                        <a class="active-menu" href="index.html"><i class="fa fa-dashboard "></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user "></i>Customers</a>
                         
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-money "></i>Transact</span></a>
                         
                    </li>
                    <li>
                        <a href="table.html"><i class="fa fa-clock-o "></i>Recent Transactions </a>
                        
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-bicycle "></i>Customer Details </span></a>
                         
                    </li>
                    
                </ul>

            </div>

        </nav>
       <div id="page-wrapper">
            <div id="page-inner" >
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">DASHBOARD</h1>
                        <h1 class="page-subhead-line"> Manage the stuff</h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="main-box mb-red">
                            
                                
                                <h5>Total Holdings</h5>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-dull">
                            
                                
                                <h5>Total Customers</h5>
                            
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-pink">
                            
                                
                                <h5>Recent Transactions </h5>
                          
                        </div>
                    </div>

                </div>
                     
                   
                <!-- /. ROW  -->


                <div class="row">

                    <div class="col-md-8">
                       
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                Recent Comments 
                            </div>
                            <div class="panel-body">
                                <ul class="media-list">

                                    <li class="media">

                                        <div class="media-body">

                                            <div class="media">
                                                <a class="pull-left" href="#">
                                                    
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">•Ayushi Morey</h4>
                                                    Very Reliable Bank , Thanks For Secure Services !
              
              <!-- Nested media object -->
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                         
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">• Sakshi Pathak </h4>
                                                            My transaction is Stuck please help me out , Transaction id - TSF23234.
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">• Jay Ingle </h4>
                                                            How can i send money request , please Guide me.
                                                        </div>
														
                                                    </div>
													<div class="media">
                                                        <a class="pull-left" href="#">
                                                            
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"> • Reharsh Deshpande</h4>
                                                            My Account opening form is failing , what are the right steps to open one !
                                                        </div>
														
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                   
                        
                    </div>
                    <div class="col-md-4">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <i class="fa fa-bell fa-fw"></i>Notifications Panel
                            </div>

                            <div class="panel-body">
                                <div class="list-group">

                                    
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-envelope fa-fw"></i>Message Sent to Manager
                                    <span class="pull-right text-muted small"><em>27 minutes ago</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-tasks fa-fw"></i>New Task Assigned
                                    <span class="pull-right text-muted small"><em>43 minutes ago</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-upload fa-fw"></i>System Rebooted
                                    <span class="pull-right text-muted small"><em>11:32 AM</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-bolt fa-fw"></i>System Crashed!
                                    <span class="pull-right text-muted small"><em>11:13 AM</em>
                                    </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-money fa-fw"></i>Transfer Requested
                                    <span class="pull-right text-muted small"><em>10:57 AM</em>
                                    </span>
                                    </a>

                                </div>
                                <!-- /.list-group -->
                            </div>

                        </div>
                    </div>
                </div>
                    
                </div>
                <!--/.ROW-->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
      </form>
    <div id="footer-sec">
        &copy; 2021 Reharsh Deshpande | Designed For : The Sparks Foundation
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
</body>
</html>
 
       