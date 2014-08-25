<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Stickers.Blog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
     <style type="text/css">
        .panel
        {
            background: yellow;
            width: 60%;
            height: 700px;
            margin-left: auto;
            margin-right: auto;
            }
     
     </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="ph">
    
        <asp:Panel ID="panel" runat="server" CssClass="panel">
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
