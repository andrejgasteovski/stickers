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
        #lbAlbumsCollected, #lbStickersFromAlbum
        {
            width:55%;
        }
        #btnSendMessage
        {
            background-image:url(img/envelope.png);
            background-color:transparent;
            background-size:100% 100%;
            background-repeat: no-repeat;
            width:10%;
            height:20%;
        }
        .userInfo
        {
            border: 3px dotted  #b10021;
            border-radius:5px;
            width:55%;
        }
          .signOut
        {
            float:right;
            color:White;
        }
        #btnSignOut
        {
            background-color:transparent;
            border-width:2px ! important;
            border-color:transparent ! important;
            border-radius:5px;
            margin-right:5px;
        }
        
        #btnSignOut:hover
        {
            background-color:transparent;
            border:2px dotted #ffffff ! important;
            
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="site-header">
        <div class="main-navigation">
         <!-- tamara was here again -->
         <span class="signOut">
            <asp:Button ID="btnSignOut" runat="server" Text="SIGN OUT" 
                onclick="btnSignOut_Click" />
        </span>
        <br />
        <div class="siteTitle">STICKERS</div>
        <br />
        <br />
            <div class="responsive_menu">
                <ul>
                   <!-- <li><a class="show-1 templatemo_home" href="#">ALBUMS</a></li>
                    <li><a class="show-2 templatemo_page2" href="#">COLLECTORS</a></li>
                    <li><a class="show-3 templatemo_page3" href="#">BLOG</a></li>
                    <li><a class="show-4 templatemo_page4" href="#">MY PROFILE</a></li>
                    -->
                    <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">ALBUMS</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/">COLLECTORS</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Blog.aspx">BLOG</asp:HyperLink></li>
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
                            <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Blog.aspx">BLOG</asp:HyperLink></li>
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
                        <h1 id="title">
                            USER'S PROFILE</h1>
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
                <center>          
               <div>
                <asp:ListBox ID="lbAlbumsCollected" runat="server" 
                       onselectedindexchanged="lbAlbumsCollected_SelectedIndexChanged" 
                       AutoPostBack="True" BackColor="#00675F" ForeColor="White"></asp:ListBox>
                </div>
                <br /><div>
                <asp:ListBox ID="lbStickersFromAlbum" runat="server" Visible="true" 
                            DataTextField="name" BackColor="#00675F" ForeColor="White"></asp:ListBox>
                </div>
                <br />
                <!-- tamara was here -->
                <div class="userInfo">
                <div><label><strong>USER INFORMATION:</strong></label></div>
                <div>
                <asp:Label ID="lblName" runat="server"></asp:Label>
                </div><div>
                <asp:Label ID="lblLocation" runat="server"></asp:Label>
                </div><div>
                <asp:Label ID="lblDateOfBirth" runat="server"></asp:Label> <!-- Born: -->
                </div><div>
                <asp:Label ID="lblDateOfCreatingAccount" runat="server"></asp:Label>  <!-- Member since: -->
                </div><div>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                <!-- tamara was here to put an empty line -->
                <br />
                <asp:Button id="btnSendMessage" runat="server" Text="" 
                            onclick="btnSendMessage_Click" />
                <br />
                </div>

                </div>

                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
                </center>
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
