<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Stickers.Profile" %>

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
         .siteTitle
        {
            font-size: 50px;
            color: White;
            font-family: myTitleFont;
        }
        .content
        {
            font-family:myFirstFont;
        }
         
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
        
        .logOut
        {
            font-size: 12px;
            color: White;
            background: transparent;
            border: 0px;
            
        }
        
        .rightCell
        {
            padding-left: 20px;
        }
        .tableEdit
        {
            margin-left: auto;
            margin-right: auto;
			width:50%;
            background :#b10021;
            border: 3px dotted  white;
            border-radius:5px;
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
		 table
        {
            color:White;
            border-collapse: separate;
            border-spacing: 15px;
            
        }
        
        content
        {
            background-color:Green;
        }
        .btnSubmit
        {
            background-color:#00675F;
            border-color:#FF5151;
            color:White;
            border-radius:5px;
            width: 10%;
            height:45px;
            
        }
        .btnSubmit:hover
        {
            width: 15%;
            height:53px;  
        }
        .btnEdit
        {
            background-color:#00675F;
            border-color:#FF5151;
            color:White;
            border-radius:5px;
            width: 60%;
            height:45px;
        }
        .btnEdit:hover
        {
            width: 65%;
            height:53px;
        }
        .ddlClass
        {
            margin-right:7%;
        }
        #centar
        {
            margin-left: auto;
            margin-right: auto;
            width:60%;
        }
        
        #tmp
        {
            margin-left: auto;
            margin-right: auto;
            width:30%;
        }
        .lbClass
        {
            width:100%;
            border: 3px dotted  #b10021;
            border-radius:5px;
            text-align:center;
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
                        <asp:Button runat="server" Text="Log out" CssClass="logOut" ID="btnLogOut" 
                            onclick="Unnamed1_Click"></asp:Button>
                    </div>
                </td>
            </tr>
        </table>
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
                                    <div id="centar">
                                        <asp:ListBox ID="lbCollections" runat="server" CssClass="lbClass"></asp:ListBox><br /><br />
                                        <div id="tmp">
                                        <asp:Button ID="btnEditAlbum" runat="server" Text="Edit Album" CssClass="btnEdit" OnClick="btnEditAlbum_Click"/>
                                        </div>
                                    </div>
                                </Content>
                            </asp:AccordionPane>
                            <asp:AccordionPane runat="server" ID="AccordionPane4">
                                <Header>
                                    Edit profile</Header>
                                <Content>
                                    <div style="margin: 5px">
                                        <asp:Table ID="Table1" runat="server" CssClass="tableEdit">
                                            <asp:TableRow>
                                                <asp:TableCell>First name</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox Style="margin: 5px" ID="tbFirstName" Height="35px" Width="115px" runat="server"></asp:TextBox></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Last name</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="tbLastName" runat="server" Style="margin: 5px" Height="35px" Width="115px"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Date of birth</asp:TableCell><asp:TableCell>
                                                    <asp:DropDownList CssClass="ddlClass" ID="ddlDay" runat="server"  style="margin-left:4%"/>
                                                    <asp:DropDownList ID="ddlMonth" runat="server" CssClass="ddlClass"/>
                                                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="ddlClass"/>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Location</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="tbLocation" runat="server" Style="margin: 5px" Height="35px" Width="115px"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>E-mail</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="tbEmail" runat="server" Style="margin: 5px" Height="35px" Width="115px"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                 
                                        </asp:Table>
                                    </div>
                                    <div style="text-align: center">
                                        <asp:Button ID="btnSubmitEditProfile" runat="server" Text="Submit"  onclick="btnSubmitEditProfile_Click"  CssClass="btnSubmit"/>
                                    <!--BackColor="#00675F"
                                            BorderColor="#FF5151" ForeColor="White" onclick="btnSubmitEditProfile_Click" -->
									</div>
                                </Content>
                            </asp:AccordionPane>
                            <asp:AccordionPane runat="server" ID="AccordionPane3">
                                <Header>
                                   Change Password
                                </Header>
                                <Content>
                                    <div style="margin: 5px">
                                        <asp:Table ID="Table2" runat="server" CssClass="tableEdit">
                                            <asp:TableRow>
                                                <asp:TableCell>Old Password</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox Style="margin: 5px" ID="tbOldPassword" Height="35px" Width="115px" runat="server" TextMode="Password"></asp:TextBox></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>New password</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="tbNewPassword" runat="server" Style="margin: 5px" TextMode="Password" Height="35px" Width="115px"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Confirm new password</asp:TableCell><asp:TableCell>
                                                    <asp:TextBox ID="tbConfrimNewPassword" runat="server" Style="margin: 5px" TextMode="Password" Height="35px" Width="115px"></asp:TextBox>
                                                </asp:TableCell>
                                            </asp:TableRow>                                 
                                        </asp:Table>
                                    </div>
                                    <div style="text-align: center">
                                        <asp:Button ID="btnSubmitChangePassword" runat="server" Text="Submit" CssClass="btnSubmit" onclick="btnSubmitChangePassword_Click"/>
                                    </div>
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
