﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAlbums.aspx.cs" Inherits="Stickers.AdminAlbums" %>

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
    </head>
    <body>
        <form id="form2" runat="server">
        <div class="site-header">
            <div class="main-navigation">
                <div class="responsive_menu">
                    <ul>
                        <li><a class="show-1 templatemo_home" href="#">Albums</a></li>
                        <li><a class="show-2 templatemo_page2" href="#">Edit albums</a></li>
                        <li><a class="show-3 templatemo_page3" href="#">Edit stickers</a></li>
                        <li><a class="show-4 templatemo_page4" href="#">Edit users</a></li>
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
                                <li><a class="show-2 templatemo_page2" href="#">Edit albums</a></li>
                                <li><a class="show-3 templatemo_page3" href="#">Edit stickers</a></li>
                                <li><a class="show-4 templatemo_page4" href="#">Edit users</a></li>
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
                            <h1 id="title">Edit albums</h1>
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
                          
                            <asp:GridView ID="gvAlbums" runat="server" AutoGenerateColumns="False" 
                                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" CellSpacing="2" onrowcancelingedit="gvAlbums_RowCancelingEdit" 
                                onrowediting="gvAlbums_RowEditing" onrowupdating="gvAlbums_RowUpdating">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                                    <asp:BoundField DataField="name" HeaderText="Name" />
                                    <asp:BoundField DataField="publisher" HeaderText="Publisher" />
                                    <asp:BoundField DataField="dateCreated" HeaderText="Created on" 
                                        ReadOnly="True" />
                                    <asp:CommandField ShowEditButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                          
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
