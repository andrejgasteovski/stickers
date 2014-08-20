<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Stickers.Default"%>

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
	        line-height: 15px;
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
            font-size: 11px;
            color: White;    
          }
          
          .rightCell
          {
            padding-left: 20px;    
          }

    </style>


</head>
<body>
    <form id="form1" runat="server">
  
    <div class="site-header">

        <table style="float: right; margin: 10px 10px -15px 10px;">
        <!-- vo ovoj div se polinjata za login -->
            <tr>
                <td>
                    <div>
                            <asp:TextBox id="tbEmail" cssclass="loginTextBox" runat="server" Placeholder="e-mail"></asp:TextBox>
                            <asp:TextBox id="tbPassword" cssclass="loginTextBox" runat="server" Placeholder="password" TextMode="Password"></asp:TextBox>
                            <asp:Button id="btnLogin" runat="server" Text="Login" CssClass="loginButton" 
                                onclick="btnLogin_Click"/>
                    </div>
                 </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:HyperLink NavigateUrl="signUp.aspx" runat="server" CssClass="signUp" 
                            ClientIDMode="AutoID">Not a member? Sign up for free</asp:HyperLink>
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
                        <h1>Stickers</h1>
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

                    <!-- prv red, slika 1 -->
                    <div class="col-md-2 col-sm-6 col-md-offset-1" style="width: 26.666667%;">
                        <div class="gallery-item">

                            <asp:Image runat="server" ImageUrl="images/gallery/fifa-world-cup.jpg"/>
                            <div class="overlay">
                                <a href="images/gallery/fifa-world-cup.jpg" data-rel="lightbox" class="fa fa-expand">
                                </a>
                            </div>
                            <div class="content-gallery">
                                <h3>
                                    FIFA World Cup 2014</h3>
                            </div>
                        </div>
                        <!-- /.gallery-item -->
                    </div>
                    

                    <!-- tekst do slika 1 -->
                    <div class="col-md-2 col-sm-6 col-md-offset-1" style="margin-left: 0px;">
                        <asp:Table runat="server" CellPadding="20">
                            <asp:TableRow>
                                <asp:TableCell> <asp:Label runat="server">Publisher:</asp:Label> </asp:TableCell>
                                <asp:TableCell CssClass="rightCell"> <asp:Label ID="Label1" runat="server">Panini</asp:Label> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell> <asp:Label ID="Label2" runat="server">Stickers:</asp:Label> </asp:TableCell>
                                <asp:TableCell CssClass="rightCell"> <asp:Label ID="Label3" runat="server">158</asp:Label> </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                    
                    <!-- prv red, slika 2 -->
                    <!--
                    <div class="col-md-2 col-sm-6">
                        <div class="gallery-item">
                            <div class="image">
                                <div class="overlay">
                                    <a href="images/gallery/gallery-item2.jpg" data-rel="lightbox" class="fa fa-expand">
                                    </a>
                                </div>
                                <img src="images/gallery/gallery-item2.jpg" alt="image 2">
                            </div>
                            <div class="content-gallery">
                                <h3>
                                    Nulla sagittis</h3>
                            </div>
                        </div>
                    </div>
                    -->

                  
                    <!-- vtor red, slika 1 -->
                    <!-- /.col-md-2 -->
                    <div class="col-md-2 col-sm-6 col-md-offset-2" style="margin-left: -43.66666%; margin-top: 19%; width: 26.666667%;">
                        <div class="gallery-item">
                            <div class="image">
                                <div class="overlay">
                                    <a href="images/gallery/uefa-champions-league.jpg" data-rel="lightbox" class="fa fa-expand">
                                    </a>
                                </div>
                                <asp:Image ID="Image1" runat="server" ImageUrl="images/gallery/uefa-champions-league.jpg"/>
                            </div>
                            <div class="content-gallery">
                                <h3>
                                    UEFA Champions League 2014/15</h3>
                            </div>
                        </div>
               
                    </div> 


                    <!-- vtor red, slika 2 -->
                    <!--
                    <div class="col-md-2 col-sm-6">
                        <div class="gallery-item">
                            <div class="image">
                                <div class="overlay">
                                    <a href="images/gallery/gallery-item7.jpg" data-rel="lightbox" class="fa fa-expand">
                                    </a>
                                </div>
                                <img src="images/gallery/gallery-item7.jpg" alt="image 7">
                            </div>
                            <div class="content-gallery">
                                <h3>
                                    Elegant</h3>
                            </div>
                        </div>
                    </div>
                    -->

                    
                    <!-- treti red, slika 1 -->
                   
                    <div class="col-md-2 col-sm-6 col-md-offset-3" style="margin-left: -43.66666%; margin-top: 38.5%; width: 26.666667%;">
                        <div class="gallery-item">
                            <div class="image">
                                <div class="overlay">
                                    <a href="images/gallery/gallery-item10.jpg" data-rel="lightbox" class="fa fa-expand" >
                                    </a>
                                </div>
                                <asp:Image ID="imgSpiderman" runat="server" src="images/gallery/spiderman.jpg" alt="The Amazing Spiderman 2"/>
                            </div>
                            <div class="content-gallery">
                                <h3>
                                    The Amazing Spiderman 2
                                </h3>
                            </div>
                        </div>
                    </div>
                   


                    <!-- treti red, slika 2 -->
                    <!--
                    <div class="col-md-2 col-sm-6">
                        <div class="gallery-item">
                            <div class="image">
                                <div class="overlay">
                                    <a href="images/gallery/gallery-item11.jpg" data-rel="lightbox" class="fa fa-expand">
                                    </a>
                                </div>
                                <img src="images/gallery/gallery-item11.jpg" alt="image 11">
                            </div>
                            <div class="content-gallery">
                                <h3>
                                    Responsive</h3>
                            </div>
                        </div>
                    </div>
                    -->


                    <!-- /.col-md-2 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.slide-item -->
        </div>
        <!-- /.homepage -->
        <asp:GridView ID="gvStickers" runat="server" CellPadding="4" ForeColor="#333333"
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
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
