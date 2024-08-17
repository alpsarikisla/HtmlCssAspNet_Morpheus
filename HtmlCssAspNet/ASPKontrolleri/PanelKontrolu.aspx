<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelKontrolu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.PanelKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .mesajKutu {
            width: 250px;
            padding: 10px;
            border-radius: 7px;
            background-color: #8fde86;
            color: #175800;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnl_mesaj" runat="server" class="mesajKutu" Visible="false">
            <strong>Başarılı</strong><br />
            Ekleme İşlemi Başarılı
        </asp:Panel>
        <asp:Panel ID="pnl_bilgi" runat="server" GroupingText="Kişisel Bilgiler" Style="width: 250px">
            <asp:TextBox ID="tb_isim" runat="server" placeholder="isminiz"></asp:TextBox>
            <br />
            <asp:TextBox ID="tb_soyisim" runat="server" placeholder="Soyisminiz"></asp:TextBox>
            <br />
            <asp:TextBox ID="tb_email" runat="server" placeholder="Email"></asp:TextBox>
            <br />
            <asp:TextBox ID="tb_telefon" runat="server" placeholder="Telefon"></asp:TextBox>
            <br />
            <asp:Button ID="btn_gonder" runat="server" Text="gönder" OnClick="btn_gonder_Click"/>
        </asp:Panel>

    </form>
</body>
</html>
