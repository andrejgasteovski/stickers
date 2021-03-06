﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Stickers.Login"
    EnableViewState="true" %>

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
        @font-face
        {
            font-family: myTitleFont;
            src: url(fonts/Raditad.ttf);
        }
        @font-face
        {
            font-family: myFirstFont;
            src: url(fonts/Quicksand-Bold.otf);
        }
        
        #login
        {
            background: #b10021;
            color: White;
            box-shadow: none;
            border-radius: 5px;
            width: 30%;
            border-collapse: separate;
            border-spacing: 15px;
            margin-left: auto;
            margin-right: auto;
            border: 3px dotted white; /* font-family:myFirstFont;*/
        }
        #tbPassword, #tbEmail
        {
            width: 90% !important;
            border-radius: 5px;
            text-align: center;
        }
        
        
        tr:nth-child(odd) td
        {
            background: #b10021;
        }
        
        td:first-child
        {
            box-shadow: none;
            border: none;
        }
        tr:last-of-type td
        {
            box-shadow: none;
        }
        
        tr:last-of-type td:first-child
        {
            box-shadow: none;
        }
        
        tr:last-of-type td:last-child
        {
            box-shadow: none;
        }
        /*novi */
        td:first-child
        {
            box-shadow: none;
        }
        
        td:last-child
        {
            border-right: none;
            box-shadow: none;
        }
        
        #btnLogin
        {
            background: #00675F;
            border-radius: 5px;
            width: 90%;
            height: 140%;
        }
        
        #btnLogin:hover
        {
            width: 100%;
            height: 150%;
        }
        
        .row
        {
            font-size: 15px;
        }
        /* tamara was here */
        .siteTitle
        {
            font-size: 50px;
            color: White;
            font-family: myTitleFont;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="site-header">
        <div class="main-navigation">
            <!-- tamara was here again -->
            <div class="siteTitle">
                STICKERS</div>
            <br />
            <br />
            <div class="responsive_menu">
                <ul>
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">ALBUMS</asp:HyperLink></li>
                  <!--  <li>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/">COLLECTORS</asp:HyperLink></li> -->
                    <li>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Blog.aspx">BLOG</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/MyProfile.aspx">MY PROFILE</asp:HyperLink></li>
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
                            <li>
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">ALBUMS</asp:HyperLink></li>
                           <!-- <li>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/">COLLECTORS</asp:HyperLink></li> -->
                            <li>
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Blog.aspx">BLOG</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/MyProfile.aspx">MY PROFILE</asp:HyperLink></li>
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
                            LOGIN</h1>
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
        <div class="container" id="logForm">
            <div class="row">
                <div class="col-md-12 text-center">
                    <table align="center" id="login">
                        <tr class="row">
                            <td colspan="2">
                                <asp:TextBox ID="tbEmail" runat="server" placeholder="E-mail" Height="35px" Width="115px"
                                    ForeColor="Black"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="row">
                            <td colspan="2">
                                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" placeholder="Password"
                                    Height="35px" Width="115px" ForeColor="Black"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="row">
                            <td colspan="2">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"></asp:Button>
                            </td>
                        </tr>
                    </table>
                    <center>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="None"
                            ControlToValidate="tbEmail" ErrorMessage="Enter email!" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail"
                            ErrorMessage="Email Address in invalid format!" ForeColor="Red" Display="None"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword"
                            ErrorMessage="Enter password!" ForeColor="Red" Display="None">Enter password!</asp:RequiredFieldValidator>
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    </center>
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
