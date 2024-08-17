<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="HtmlCssAspNet.NorthwindProjeKatmanli.KategoriEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kategori Ekle</title>
    <link href="css/tasarim.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="anaTasiyici">
            <div class="baslik">
                <h2>Kategori Ekle</h2>
            </div>
            <div class="icerik">
                <asp:Panel ID="pnl_basarili" runat="server" CssClass="panel basariliPanel" Visible="false">
                    <strong>Başarılı</strong> Kategori Başarı ile Eklenmiştir
                </asp:Panel>
                <asp:Panel ID="pnlBasarisiz" runat="server" CssClass="panel basarisizPanel" Visible="false">
                    <strong>Başarılı</strong> Kategori Eklerken Bir Hata Oluştu
                </asp:Panel>
                <div class="satir">
                    Kategori Adı<br />
                    <asp:TextBox ID="tb_kategoriadi" runat="server" CssClass="metinkutu"></asp:TextBox>
                </div>
                <div class="satir">
                    Kategori Açıklama<br />
                    <asp:TextBox ID="tb_aciklama" runat="server" CssClass="metinkutu" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="satir">
                    <asp:LinkButton ID="lbtn_kaydet" runat="server" CssClass="buton" OnClick="lbtn_kaydet_Click">Kategori Kaydet</asp:LinkButton>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
