<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="Stickers.Message" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
        <asp:Button id="btnSendMessage" runat="server" Text="Send Message" 
            onclick="btnSendMessage_Click"/>
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
