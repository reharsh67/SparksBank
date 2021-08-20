<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transact.aspx.cs" MasterPageFile="Site1.Master" Inherits="SparksBank.Transact" %>


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
                            <a class="active-menu" href="index.aspx"><i class="fa fa-dashboard"></i>Dashboard</a>
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
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">TRANSACT</h1>
                            

                        </div>
                    </div>



                    <!-- /. ROW  -->

                    <br />
                   
                    


                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Operation
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Select Customer ID --‎‎‎‎‎‎‎‏‏‎         </label>
                                        <asp:DropDownList ID="custIdSender" AppendDataBoundItems="true" class="input--style-4" Height="50" style="width:inherit"  runat="server" AutoPostBack="true" required>
                                            <asp:ListItem Value=''>--- Please Select Sender ---</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Enter Amount ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎‏‏‎ ‎  --</label>
                                        <asp:TextBox ID="amt" runat="server" style="width:inherit"  Height="50" required></asp:TextBox>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Select Customer ID --‎‎‎‎‎‎‎‏‏‎         </label>
                                        <asp:DropDownList ID="custIdReciver" AppendDataBoundItems="true" class="input--style-4" Height="50" style="width:inherit"   runat="server" AutoPostBack="true" required>
                                            <asp:ListItem Value=''>--- Please Select Sender ---</asp:ListItem>
                                        </asp:DropDownList>
                                        </div>
                                        
                                    </div>
                                   
                                    <div class="form-group">
                                        <center>
                                        <asp:Button ID="Trans" runat="server" onClick="Trans_Click" Text="Transfer"/>
                                            </center>
                                        
                                    </div>
                                </div>
                              <center><asp:Label runat="server" ID="alertMsg" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#00CC00"></asp:Label></center>
                            </div>

                        </div>
                </div>
                    </div>
                
            </div>

            <!--/.ROW-->
      
      
        <!-- /. PAGE INNER  -->

 </asp:Content>
