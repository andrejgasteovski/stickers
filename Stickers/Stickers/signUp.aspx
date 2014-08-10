<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="Stickers.signUp" EnableViewState="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Stickers</title>
    <meta name="keywords" content="concept, responsive bootstrap, green, white, free html5 template, templatemo" />
    <meta name="description" content="Concept is free responsive template using bootstrap framework. Gallery is integrated with responsive lightbox." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta xml:lang="mk" charset="utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800'
        rel='stylesheet' type='text/css' />
    <!-- CSS Bootstrap & Custom -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/templatemo_misc.css" />
    <link rel="stylesheet" href="css/signup.css" />
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/templatemo_style.css" />
    <!-- Favicons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico" />
    <!-- ovde go pisuvam nasiot css -->
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="site-header">
        <div class="main-navigation">
            <div class="responsive_menu">
                <ul>
                    <li><a class="show-1 templatemo_home" href="#">Albums</a></li>
                    <li><a class="show-2 templatemo_page2" href="#">Collectors</a></li>
                    <li><a class="show-3 templatemo_page3" href="#">Blog</a></li>
                    <li><a class="show-4 templatemo_page4" href="#">My Profile</a></li>
                </ul>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 responsive-menu">
                        <a href="#" class="menu-toggle-btn"><i class="fa fa-bars"></i></a>
                    </div>
                    <!-- /.col-md-12 -->
                    <div class="col-md-12 main_menu">
                        <ul>
                            <li><a class="show-1 templatemo_home" href="#">Albums</a></li>
                            <li><a class="show-2 templatemo_page2" href="#">Collectors</a></li>
                            <li><a class="show-3 templatemo_page3" href="#">Blog</a></li>
                            <li><a class="show-4 templatemo_page4" href="#">My Profile</a></li>
                        </ul>
                    </div>
                    <!-- /.col-md-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.main-navigation -->
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <a rel="nofollow" href="http://www.templatemo.com/preview/templatemo_397_concept"
                        class="templatemo_logo">
                        <h1>
                            Sign up</h1>
                    </a>
                    <!-- /.logo -->
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.site-header -->
    <!-- /#menu-container -->
    <div id="templatemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <table align="center">
                        <tr class="row">
                            <td>
                                <asp:TextBox ID="tbFirstName" placeholder="First name" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="tbFirstName" Display="Dynamic" ErrorMessage="Enter name!" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:TextBox ID="tbLastName" placeholder="Last name" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="tbLastName" Display="Dynamic" ErrorMessage="Enter surname!" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Date of birth:" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:DropDownList CssClass="ddlClass" ID="ddlDay" runat="server" 
                                    ValidationGroup="dateGroup">
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlMonth" runat="server" ValidationGroup="dateGroup" >
                                </asp:DropDownList>
                                <asp:DropDownList ID="ddlYear" runat="server" ValidationGroup="dateGroup">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="ddlDay" Display="Dynamic" ErrorMessage="Enter date!" 
                                    ForeColor="Red" ValidationGroup="dateGroup"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:TextBox ID="tbLocation" placeholder="Location" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="tbLocation" Display="Dynamic" ErrorMessage="Enter location!" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:TextBox ID="tbEmail" placeholder="e-mail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Enter e-mail!" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:TextBox ID="tbPassword" placeholder="Password" runat="server" 
                                    TextMode="Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="tbPassword" Display="Dynamic" ErrorMessage="Enter password!" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr class="row">
                            <td>
                                <asp:TextBox ID="tbPasswordConfirm" placeholder="Re-enter password" runat="server" 
                                    TextMode="Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="tbPasswordConfirm" Display="Dynamic" ErrorMessage="Re-enter password!" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="tbPassword" ControlToValidate="tbPasswordConfirm" 
                                    Display="Dynamic" ErrorMessage="Enter the same password!" ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr class="row">
                            <td>
                                <asp:Button CssClass="button" ID="btnSubmit" runat="server" Text="Submit" 
                                BackColor="#B00B02" ForeColor="White" Font-Bold="True" 
                                    onclick="btnSubmit_Click"  />
                             </td>
                        </tr>
                      
                    </table>
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.templatemo_footer -->
    <!-- Scripts -->
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="js/modernizr.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/tabs.js"></script>
    <script type="text/javascript" src="js/jquery.lightbox.js"></script>
    <script type="text/javascript" src="js/templatemo_custom.js"></script>
    </form>
</body>
</html>
