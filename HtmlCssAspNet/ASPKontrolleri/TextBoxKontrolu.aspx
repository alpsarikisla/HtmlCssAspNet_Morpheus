<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxKontrolu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.TextBoxKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div{
            padding:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tb_metin" runat="server"></asp:TextBox>
        </div>
        <div>
            Sınırlı Karakter<br />
            <asp:TextBox ID="tb_sinirli" runat="server" MaxLength="5"></asp:TextBox>
        </div>
        <div>
            Şifreli<br />
            <asp:TextBox ID="tb_sifreli" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            Yer Tututcu<br />
            <asp:TextBox ID="tb_yerTutucu" runat="server" placeholder="Mail Giriniz"></asp:TextBox>
        </div>
        <div>
            Sadece Okunabilir<br />
            Profil Sayfalarındaki mail adreslerinin değiştirilememesi için kullannılabilir<br />
            <asp:TextBox ID="tb_okunabilir" runat="server" ReadOnly="true" Text="alpsarikisla@hotmail.com"></asp:TextBox>
        </div>
        <div>
            Erişime Kapalı<br />
            <asp:TextBox ID="tb_erisilemez" runat="server" Enabled="false" Text="alpsarikisla@hotmail.com"></asp:TextBox>
        </div>
        <div>
            Görünmez Kontrol - Tüm Asp kontrollerinde kullanılabilir
            <asp:TextBox ID="tb_gorunmez" runat="server" Visible="false"></asp:TextBox>
        </div>
    </form>
</body>
</html>
