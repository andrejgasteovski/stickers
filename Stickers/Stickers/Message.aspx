<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="Stickers.Message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!-- tamara was here -->
    <title>Message</title>
    <style type="text/css">
        @font-face
        {
            font-family: myFirstFont;
            src: url(fonts/Quicksand-Bold.otf);
        }
         @font-face
        {
            font-family: myTitleFont;
            src: url(fonts/Raditad.ttf);
        }
        body
        {
            font-family:myFirstFont;
        }
        .fullForm
        {
            width:40%;
            margin-left:auto;
            margin-right:auto;
            border: 3px dotted  #b10021;
            padding:10px;
            background-color: #ffebe1;
        }
        #tbBody
        {
            width:98%;
            height:170px;
            border-radius: 5px;
            border-color:#b10021;
            border-width:2px;
        }
        #tbTitle
        {
            border-radius: 5px;
            width:50%;
            border-color:#b10021 ! important;
            border-width:2px;
            height:20px;
        }
        #btnSendMessage
        {
            background: #00675F;
            border-radius: 5px;
            width: 40%;
            height: 40px;
            font-family:myFirstFont;
            color:White;
            font-size:15px;
            border-width:0px !important;
        }
        .siteTitle
        {
            font-size: 50px;
            color: #b10021;
            font-family: myTitleFont;
            width:30%;
            margin-left:auto;
            margin-right:auto;
            text-align:center;
        }
    </style>
</head>
<body>
<!-- tamara was here again -->
        <div class="siteTitle">STICKERS</div>
        <br />
        <br />
<div class="fullForm">
    <form id="form1" runat="server">
    <div>
        To:&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRecepientEmail" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Title:<br />
        <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
        <br />
        <br />
        Message body:<br />
        <asp:TextBox ID="tbBody" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <!-- tamara was here to caps lock the button -->
        <asp:Button id="btnSendMessage" runat="server" Text="SEND MESSAGE" 
            onclick="btnSendMessage_Click"/>
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    </form>
   </div>
</body>
</html>
