<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageKontrolu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.ImageKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="img_resim" runat="server" style="width:200px" />
            <br />
            <asp:Button ID="btn_degistir" runat="server" OnClick="btn_degistir_Click" Text="Değiştir" />
        </div>
    </form>
</body>
</html>
