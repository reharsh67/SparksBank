<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="Site1.Master" CodeBehind="index.aspx.cs" Inherits="SparksBank.index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        <a class="active-menu" href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="Cust_details.aspx"><i class="fa fa-user "></i>Customers</a>
                         
                    </li>
                     <li>
                        <a href="Transact.aspx"><i class="fa fa-money "></i>Transact</span></a>
                         
                    </li>
                    <li>
                        <a href="Recent_TR.aspx"><i class="fa fa-clock-o "></i>Recent Transactions </a>
                        
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
                            
                                <asp:Label ID="totalHoldings" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ></asp:Label>
                                <h5>Total Holdings</h5>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-dull">
                            
                                 <asp:Label ID="totalCustomers" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large"></asp:Label>
                                <h5>Total Customers</h5>
                            
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="main-box mb-pink">
                            
                                 <asp:Label ID="recentTransactions" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large"></asp:Label>
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
      </asp:Content>
    
 
       