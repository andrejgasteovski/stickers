<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Stickers.Profile1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body>
    <form id="form2" runat="server">
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
                        <h1 id="title">
                            Stickers</h1>
                        <br />
                    </a>
                    <!-- /.logo -->
                </div>
                <!-- /.col-md-12 -->
                <center>
                  
                </center>
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
                <!-- /.col-md-12 -->
                <div id="center">
                <!--                        Tuka body-to!!!!                           -->

                <asp:ListBox ID="lbAlbumsCollected" runat="server" onselectedindexchanged="lbAlbumsCollected_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
                <asp:ListBox ID="lbStickersFromAlbum" runat="server" Visible="true" DataTextField="name"></asp:ListBox>

                <asp:Label ID="lblName" runat="server"></asp:Label>
                <asp:Label ID="lblLocation" runat="server"></asp:Label>
                <asp:Label ID="lblDateOfBirth" runat="server"></asp:Label> <!-- Born: -->
                <asp:Label ID="lblDateOfCreatingAccount" runat="server"></asp:Label>  <!-- Member since: -->
                <asp:Label ID="lblEmail" runat="server"></asp:Label>




                



                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
