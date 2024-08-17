<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KullaniciGirisFormu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.KullaniciGirisFormu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/KullaniciGirisStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="girisPanel">
            <div class="satir" style="text-align: center">
                <img src="images/giphy.gif" width="300" />
            </div>
            <div>
                <asp:Label ID="lbl_mesaj" runat="server" CssClass="hataMesaj" Visible="false"></asp:Label>
            </div>
            <div class="satir">
                Email Adresiniz:<br />
                <asp:TextBox ID="tb_mail" runat="server" CssClass="metinKutu" placeholder="ornek@email.com"></asp:TextBox>
            </div>
            <div class="satir">
                Şifreniz<br />
                <asp:TextBox ID="tb_sifre" runat="server" CssClass="metinKutu" TextMode="Password"></asp:TextBox>
            </div>
            <div class="satir" style="margin-top: 25px">
                <asp:LinkButton ID="lbtn_giris" runat="server" Text="Giriş Yap" CssClass="girisButon" OnClick="lbtn_giris_Click"></asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
