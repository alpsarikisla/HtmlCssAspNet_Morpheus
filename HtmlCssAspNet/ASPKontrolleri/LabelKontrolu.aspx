<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabelKontrolu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.LabelKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        span{
            font-size:20pt;
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_isim" runat="server"></asp:Label>
            <label>Merhaba</label>
        </div>
    </form>
</body>
</html>
