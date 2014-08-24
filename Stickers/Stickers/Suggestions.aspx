<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suggestions.aspx.cs" Inherits="Stickers.Suggestions" %>

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
        /* tamara was here */
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
        .container
        {
            font-family:myFirstFont;
        }
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
        <div class="siteTitle">STICKERS</div>
        <br />
        <br />
            <div class="responsive_menu">
                <ul>
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">ALBUMS</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/">COLLECTORS</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/">BLOG</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/MyProfile.aspx">MY PROFILE</asp:HyperLink></li>
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
                            <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">ALBUMS</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/">COLLECTORS</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/">BLOG</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/MyProfile.aspx">MY PROFILE</asp:HyperLink></li>
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
                        <h1>SUGGESTIONS</h1>

                        
                         
                    </a>
                    <!-- /.logo -->
                </div>
                
                <!-- /.col-md-12 -->
                
                <div style="width:200; height:200; background-color:Green">
                <asp:GridView ID="gvAlbumi" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="img" HeaderText="Album" />
                            </Columns>
                </asp:GridView>
                </div>
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
