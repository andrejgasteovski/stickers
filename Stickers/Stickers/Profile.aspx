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
    <link rel="stylesheet" href="css/accordion.css" />
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
        .tableEdit
        {
            margin-left: auto;
            margin-right: auto;
        }
        .rowEdit
        {
            margin-bottom: 5px;
        }
        .btnCss
        {
            width: 100px;
            margin: 10px;
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
                    <asp:Accordion CssClass="accordion" ID="Accordion1" runat="server" HeaderCssClass="accordionHeader"
                        HeaderSelectedCssClass="accordionHeaderSelected" ContentCssClass="accordionContent">
                        <Panes>
                            <asp:AccordionPane runat="server" ID="AccordionPane1">
                                <Header>
                                    My Collections</Header>
                                <Content>
                                    
                                </Content>
                            </asp:AccordionPane>
                            <asp:AccordionPane runat="server" ID="AccordionPane4">
                                <Header>
                                    Edit profile</Header>
                                <Content>
                                    <div style="margin: 5px">
                                        <asp:Table ID="Table1" runat="server" CssClass="tableEdit">
                                            <asp:TableRow>
                                                <asp:TableCell>Име:</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox Style="margin: 5px" ID="imeKorisnik" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Презиме:</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="prezimeKorisnik" runat="server" Style="margin: 5px"></asp:TextBox></asp:TableCell></asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Дата на раѓање:</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="dataRaganjeKorisnik" runat="server" Style="margin: 5px"></asp:TextBox></asp:TableCell></asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Држава:</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="drzavaKorisnik" runat="server" Style="margin: 5px"></asp:TextBox></asp:TableCell></asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Е-маил:</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="mail" runat="server" Style="margin: 5px"></asp:TextBox></asp:TableCell></asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Дата на креирање на профилот:</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="dataKreiranjeProfil" runat="server" Style="margin: 5px"></asp:TextBox></asp:TableCell></asp:TableRow>
                                        </asp:Table>
                                    </div>
                                    <div style="text-align: center">
                                        <asp:Button ID="btnEdit" runat="server" Text="Измени податоци" BackColor="#C4063A"
                                            BorderColor="#FF5151" ForeColor="White" />
                                    </div>
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
