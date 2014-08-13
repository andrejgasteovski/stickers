<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StickersCollection.aspx.cs" Inherits="Stickers.StickersCollection" %>

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
        }
        
        .sticker
        {
            height: 25px; width: 25px; background-color:Red; margin: 5px; float: left;
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
                        <h1>Suggestions</h1>
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
                                                            <!--
                                                            <asp:Button runat="server" ID="btn01" Text='<%# Eval("number") %>' CssClass="btnCss" />
                                                            
                                                            <div id="myDiv" style="height: 25px; width: 25px; background-color:Red; margin: 5px; float: left;" onclick="myFunction">
                                                                <asp:Label Text='<%# Eval("number") %>' runat="server"></asp:Label>
                                                            </div>
                                                            -->
                                                <asp:Panel ID="myPanel" runat="server" CssClass="sticker" onclick="alert('hello');">
                                                    <asp:Label ID="Label1" Text='<%# Eval("number") %>' runat="server" ></asp:Label>
                                                </asp:Panel>
                                            </ItemTemplate>
                                            <EmptyDataTemplate>
                                                No data
                                            </EmptyDataTemplate>
                                            <ItemSeparatorTemplate></ItemSeparatorTemplate>
                                        </asp:ListView>
                                        <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="lvMyCollections"
                                            PageSize="10">
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
