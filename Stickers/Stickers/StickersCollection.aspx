<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StickersCollection.aspx.cs"
    Inherits="Stickers.StickersCollection" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
            font-family: myFirstFont;
            src: url(fonts/Quicksand-Bold.otf);
        }
        .container
        {
            font-family: myFirstFont;
        }
        @font-face
        {
            font-family: myTitleFont;
            src: url(fonts/Raditad.ttf);
        }
        .siteTitle
        {
            font-size: 50px;
            color: White;
            font-family: myTitleFont;
            margin-left:5%;
        }
        .btnCss
        {
            border-radius: 5px;
            background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#B00B02));
            font-weight: bold;
            margin: 10px;
            text-align: center !important;
        }
        .btnCss:hover
        {
            border: 3px solid #EED5D2 !important;
            width: 12%;
        }
        .sticker:hover
        {
            border: 3px solid #EED5D2 !important;
            width: 12%;
        }
        .stickerChecked:hover
        {
            border: 3px solid #EED5D2 !important;
            width: 12%;
        }
        .stickerMissing:hover
        {
            border: 3px solid #EED5D2 !important;
            width: 12%;
        }
        .stickerDuplicate:hover
        {
            border: 3px solid #EED5D2 !important;
            width: 12%;
        }
        .stickerCollected:hover
        {
            border: 3px solid #EED5D2 !important;
            width: 12%;
        }
        .sticker
        {
            height: 25px;
            width: 25px;
            background-color: Red;
            margin: 5px;
            float: left;
        }
        /* css za slikicka koja e selektirana */
        .stickerChecked
        {
            border-radius: 5px;
            background: #EED5D2;
            background-image: url('img/check.png');
            background-size: 70%;
            color: White;
            background-repeat: no-repeat;
            background-position: center;
            width: 10%; /*background : red;*/
            font-weight: bold;
            margin: 10px;
        }
        
        /* css za slikicka koja korisnikot ne ja poseduva */
        .stickerMissing
        {
            border-radius: 5px;
            width: 10%;
            color: White; /*         
            background :  #b10021;
            */
            background: #7fb3af;
            font-weight: bold;
            margin: 10px;
        }
        
        /* css za slikicka koja korisnikot ja ima 2 ili poveke pati */
        .stickerDuplicate
        {
            border-radius: 5px;
            width: 10%; /*height:3%;*/
            color: White;
            background: #00675F;
            font-weight: bold;
            margin: 10px;
        }
        
        /* css za slikicka koja korisnikot ja ima ednas */
        .stickerCollected
        {
            border-radius: 5px;
            width: 10%;
            color: White;
            background: #03A89E;
            font-weight: bold;
            margin: 10px;
        }
        #btnLose
        {
            text-align: center;
            color: White;
            background: #b10021;
            font-weight: bold;
            width: 30%;
            border-radius: 5px;
        }
        #btnCollect
        {
            color: White;
            background: #b10021;
            font-weight: bold;
            width: 30%;
            border-radius: 5px;
        }
        #center
        {
            margin-right: auto;
            margin-left: auto;
            width: 60%;
        }
        #lbSelected
        {
            width: 60%;
            border: 3px dotted #b10021;
            border-radius: 5px;
            text-align: center;
            color: Black;
        }
        #title
        {
            margin-left: auto;
            margin-right: auto;
        }
        .signOut
        {
            float: right;
            color: White;
        }
        #btnSignOut
        {
            background-color: transparent;
            border-width: 2px !important;
            border-color: transparent !important;
            border-radius: 5px;
            margin-right: 5px;
        }
        
        #btnSignOut:hover
        {
            background-color: transparent;
            border: 2px dotted #ffffff !important;
        }
        .cellCss
        {
            padding: 10px;
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
            <div class="siteTitle">
                STICKERS</div>
            <br />
            <br />
            <div class="responsive_menu">
                <ul>
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">ALBUMS</asp:HyperLink></li>
               <!--     <li>
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
                          <!--  <li>
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
                        <h1 id="title">
                            STICKER COLLECTIONS</h1>
                        <br />
                    </a>
                    <!-- /.logo -->
                </div>
                &nbsp;&nbsp;
                <!-- /.col-md-12 -->
                <center>
                    <asp:ListView ID="lvMyCollections" runat="server" OnPagePropertiesChanging="lvMyCollections_PagePropertiesChanging">
                        <LayoutTemplate>
                            <asp:Panel ID="Panel1" runat="server" Width="500">
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                            </asp:Panel>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <asp:Button runat="server" ID="btnSticker" Text='<%# Eval("number") %>' CssClass='<%# Eval("cssClass") %>'
                                OnClick="stickerButton_Click" />
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            No data
                        </EmptyDataTemplate>
                        <ItemSeparatorTemplate>
                        </ItemSeparatorTemplate>
                    </asp:ListView>
                    <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="lvMyCollections"
                        PageSize="70">
                        <Fields>
                            <asp:NextPreviousPagerField ShowFirstPageButton="True" ShowNextPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ShowLastPageButton="True" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                    <br />
                    <br />
                    <asp:Table runat="server" Width="40%" BorderColor="#B10021" 
                        BorderStyle="Solid" BorderWidth="4px" >
                        <asp:TableRow BorderColor="#B10021" BorderStyle="Dotted" BorderWidth="3px">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Label ID="Label3" runat="server" Text="Legend:" Font-Bold="True" Font-Size="Larger"></asp:Label></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" cssClass="cellCss">
                                <asp:Label runat="server" Text="Missing stickers:"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell><asp:Button runat="server" Text="" CssClass="stickerMissing" Width="40%"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" cssClass="cellCss">
                                <asp:Label ID="Label4" runat="server" Text="Duplicate stickers:"></asp:Label></asp:TableCell>
                                <asp:TableCell><asp:Button ID="Button1" Text="" runat="server" CssClass="stickerDuplicate" Width="40%"/></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign="Left" cssClass="cellCss">
                                <asp:Label ID="Label5" runat="server" Text="Collected stickers:"></asp:Label></asp:TableCell>
                            <asp:TableCell><asp:Button ID="Button2" Text="" runat="server" CssClass="stickerCollected" Width="40%"/></asp:TableCell>    
                        </asp:TableRow>
                    </asp:Table>
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
                <center>
                    <!-- /.col-md-12 -->
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <div id="center">
                        <center>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label ID="lbl1" runat="server">Users with duplicates:</asp:Label>
                                    </asp:TableCell><asp:TableCell>
                                        <asp:Label ID="Label1" runat="server">Selected stickers:</asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Label ID="Label2" runat="server">Users that miss these stickers:</asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:ListBox ID="lbUsersDuplicates" Visible="false" runat="server" DataTextField="firstName">
                                        </asp:ListBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:ListBox ID="lbSelected" runat="server" DataTextField="name"></asp:ListBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:ListBox ID="lbUsersMissingStickers" Visible="false" runat="server" DataTextField="firstName">
                                        </asp:ListBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="cellCss">
                                        <asp:Button ID="btnVisitProfileDuplicate" runat="server" OnClick="btnVisitProfileDuplicate_Click"
                                            Text="Visit Profile Duplicates" Width="190px" /></asp:TableCell>
                                    <asp:TableCell CssClass="cellCss">
                                        <asp:Table runat="server">
                                            <asp:TableRow>
                                                <asp:TableCell>
                                                    <asp:Button ID="btnCollect" runat="server" Text="Collect them" OnClick="btnCollect_Click"
                                                        Width="140px" /></asp:TableCell>
                                                <asp:TableCell>
                                                    <asp:Button ID="btnLose" runat="server" Text="Lost them" OnClick="btnLose_Click"
                                                        Width="140px" />
                                                </asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                    </asp:TableCell>
                                    <asp:TableCell CssClass="cellCss">
                                        <asp:Button ID="btnVisitProfileMissing" runat="server" OnClick="btnVisitProfileMissing_Click"
                                            Text="Visit Profile Missing" Width="190px" /></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </center>
                    </div>
                    <!-- /.row -->
                </center>
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
