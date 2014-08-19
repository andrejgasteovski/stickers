﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StickersCollection.aspx.cs" Inherits="Stickers.StickersCollection" %>

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
        .btnCss
        {
             border-radius:5px;  
             background : -webkit-gradient(linear, left top, left bottom, from(#fff), to(#B00B02));
             font-weight: bold;
             margin:10px;
             text-align: center !important;
        }
     .btnCss:hover
        {
             border:3px solid #EED5D2 !important; 
             width:12%; 
        }
         .sticker:hover
        {
            border:3px solid #EED5D2 !important; 
             width:12%;
                
        }
        .stickerChecked:hover
        {
            border:3px solid #EED5D2 !important; 
            width:12%;                
        }
        .stickerMissing:hover
        {
             border:3px solid #EED5D2 !important; 
             width:12%; 
        }
        .stickerDuplicate:hover
        {
             border:3px solid #EED5D2 !important;
             width:12%; 
        }
        .stickerCollected:hover
        {
             border:3px solid #EED5D2 !important; 
              width:12%;
        }
        .sticker
        {
            height: 25px; width: 25px; background-color:Red; margin: 5px; float: left;
        }
        /* css za slikicka koja e selektirana */
        .stickerChecked
        {
            border-radius:5px; 
            background : #EED5D2;
            background-image: url('img/check.png');
            background-size:70%;
            color:White;
            background-repeat: no-repeat;
            background-position: center;
            width:10%; 
            /*background : red;*/
            font-weight: bold;
            margin:10px;
        }
        
        /* css za slikicka koja korisnikot ne ja poseduva */
        .stickerMissing
        {
            border-radius:5px;  
            width:10%;
            color:White;   
            /*         
            background :  #b10021;
            */
            background: #7fb3af; 
            font-weight: bold;
            margin:10px;
        }
        
        /* css za slikicka koja korisnikot ja ima 2 ili poveke pati */
        .stickerDuplicate
        {
            border-radius:5px;
            width:10%; 
            /*height:3%;*/
            color:White;            
            background : #00675F;
            font-weight: bold;
            margin:10px;
        }
        
        /* css za slikicka koja korisnikot ja ima ednas */
        .stickerCollected
        {
            border-radius:5px;  
            width:10%;
            color:White;            
            background :  #03A89E;
            font-weight: bold;
            margin:10px;
        }
        #btnLose
        {
            text-align:center;
            color:White;            
            background :  #b10021;
            font-weight: bold;
            width:30%;
            border-radius:5px;
            
        }
        #btnCollect
        {
            margin-left: 24%;
            color:White;            
            background :  #b10021;
            font-weight: bold;
            width:30%;
            border-radius:5px;
            
        }
        #center
        {
            margin-left: auto;
            margin-right: auto;
            width: 35%;
            
        }
        #lbSelected
        {
            width: 60%;
            margin-left: 25%;
            border: 3px dotted  #b10021;
            border-radius:5px;
            text-align:center;
            color:Black;
        }
        #title
        {
            margin-left: auto;
            margin-right: auto;
        }
        
        
    </style>
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
                        <h1 id="title">Sticker Collections</h1><br />
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
                                                <asp:Button runat="server" ID="btnSticker" Text='<%# Eval("number") %>' CssClass='<%# Eval("cssClass") %>' OnClick="stickerButton_Click"/>
                                            </ItemTemplate>
                                            <EmptyDataTemplate>
                                                No data
                                            </EmptyDataTemplate>
                                            <ItemSeparatorTemplate></ItemSeparatorTemplate>
                                        </asp:ListView>
                                        <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="lvMyCollections"
                                            PageSize="70">
                                            <Fields>
                                                <asp:NextPreviousPagerField ShowFirstPageButton="True" ShowNextPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ShowLastPageButton="True" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
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
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <div id="center">
                <asp:ListBox ID="lbSelected" runat="server" DataTextField="name"></asp:ListBox><br /><br />
                <asp:Button ID="btnCollect" runat="server" Text="Collect them" onclick="btnCollect_Click" />&nbsp;
                <asp:Button ID="btnLose" runat="server" Text="Lost them" onclick="btnLose_Click" />   

                <asp:ListBox ID="lbUsersDuplicates" runat="server" DataTextField="firstName"></asp:ListBox>
                <asp:ListBox ID="lbUsersMissingStickers" runat="server" DataTextField="firstName"></asp:ListBox>
                <div class="row">
               
                <!-- /.col-md-12 -->
            </div>
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
