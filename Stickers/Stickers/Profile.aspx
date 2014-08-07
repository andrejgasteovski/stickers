<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Stickers.Profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/templatemo_style.css" />
    <!-- Favicons -->
    <link rel="shortcut icon" href="images/ico/favicon.ico" />
    <!-- ovde go pisuvam nasiot css -->
    <style type="text/css">
        .loginTextBox
        {
            font-size: 12px;
            padding: 1px;
            color: rgb(139, 139, 139);
            height: 20px;
            width: 100px;
            line-height: 0px;
        }
        
        .loginButton
        {
            width: 50px;
            height: 18px;
            line-height: 0px;
            color: #b10021;
            font-size: 12px;
        }
        
        .signUp
        {
            font-size: 12px;
            color: White;
        }
        
        .rightCell
        {
            padding-left: 20px;
        }
        
        .accordion
        {
            margin: 10px auto 30px auto;
	        text-align: left;
	        border: 3px #b10021;
        }
        .accordionHeader:hover
        {
            background: #fff;
            font-weight: bold;
            color: #b10021;
        }
        
        .accordionHeader
        {
            /*
            border: 1px solid #b10021;
            color: white;
            background-color: #b10021;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;*/
            font-weight: bold;
            padding: 5px 20px;
            position: relative;
            z-index: 20;
            display: block;
            height: 30px;
            cursor: pointer;
            color: #777;
            text-shadow: 1px 1px 1px rgba(255,255,255,0.8);
            background: #ffffff;
            background: -moz-linear-gradient(top, #ffffff 1%, #eaeaea 100%);
            background: -webkit-gradient(linear, left top, left bottom, color-stop(1%,#ffffff), color-stop(100%,#eaeaea));
            background: -webkit-linear-gradient(top, #ffffff 1%,#eaeaea 100%);
            background: -o-linear-gradient(top, #ffffff 1%,#eaeaea 100%);
            background: -ms-linear-gradient(top, #ffffff 1%,#eaeaea 100%);
            background: linear-gradient(top, #ffffff 1%,#eaeaea 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#eaeaea',GradientType=0 );
            box-shadow: 0px 0px 0px 1px rgba(155,155,155,0.3), 1px 0px 0px 0px rgba(255,255,255,0.9) inset, 0px 2px 2px rgba(0,0,0,0.1);
        }
        
        .accordionHeaderSelected
        {
            /*    border: 1px solid #2F4F4F;
            color: white;
            background-color: #5078B3;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
            */
             padding: 5px 20px;
            position: relative;
            z-index: 20;
            font-weight: bold;
            display: block;
            height: 30px;
            cursor: pointer;
            background: #ffd8df;
            color: #b10021;
            text-shadow: 0px 1px 1px rgba(255,255,255, 0.6);
            box-shadow: 0px 0px 0px 1px rgba(155,155,155,0.3), 0px 2px 2px rgba(0,0,0,0.1);
        }
        
        .accordionHeaderSelected + .accordionHeader:hover:after
        {
            content: '';
            position: absolute;
            width: 24px;
            height: 24px;
            right: 13px;
            top: 7px;
            background: transparent url(images/arrow_down.png) no-repeat center center;
        }
        
        .accordionContent
        {
           /* background-color: #b10021;
            color: White;
            border: 1px #b10021;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
            background: rgba(255, 255, 255, 0.5);*/
            border: 1px #b10021;
             border-bottom: none;
            background-color: #ffecef;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
	        margin-top: -1px;
	        overflow: hidden;
	        height: 0px;
	        position: relative;
	        z-index: 10;
	        -webkit-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
	        -moz-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
	        -o-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
	        -ms-transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
	        transition: height 0.3s ease-in-out, box-shadow 0.6s linear;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div class="site-header">
        <table style="float: right; margin: 10px 10px -15px 10px;">
            <!-- vo ovoj div se polinjata za login -->
            <tr>
                <td>
                    <div>
                        <asp:Label ID="lblWelcome" runat="server" Text="Welcome" CssClass="signUp"></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:HyperLink runat="server" Text="Log out" CssClass="signUp"></asp:HyperLink>
                    </div>
                </td>
            </tr>
        </table>
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
                            My profile</h1>
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
    <div id="menu-container" style="margin-left: auto; margin-right: auto; width: 65%;">
        <div class="content homepage" id="menu-1">
            <div class="container-fluid">
                <div class="row">
                    <asp:Accordion CssClass="accordion" ID="Accordion1" runat="server" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                        ContentCssClass="accordionContent">
                        <Panes>
                            <asp:AccordionPane runat="server" ID="AccordionPane1">
                               <Header>
                                    My Collections</Header>
                                <Content>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue
                                    massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero,
                                    sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus
                                    a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                                    ac turpis e
                                </Content>
                            </asp:AccordionPane>
                            <asp:AccordionPane runat="server" ID="AccordionPane4">
                                <Header>
                                    My Collections 2</Header>
                                <Content>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue
                                    massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero,
                                    sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus
                                    a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                                    ac turpis e
                                </Content>
                            </asp:AccordionPane>
                            <asp:AccordionPane runat="server" ID="AccordionPane3">
                                <Header>
                                    My Collections 3</Header>
                                <Content>
                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue
                                    massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero,
                                    sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus
                                    a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                                    ac turpis e
                                </Content>
                            </asp:AccordionPane>
                        </Panes>
                    </asp:Accordion>
                    <!-- /.Accordion -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.slide-item -->
        </div>
        <!-- /.homepage -->
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    <!-- /#menu-container -->
    <div id="templatemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>
                    </p>
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
