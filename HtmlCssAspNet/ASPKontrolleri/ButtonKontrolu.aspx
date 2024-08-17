<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonKontrolu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.ButtonKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            standart buton<br />
            <asp:Button ID="btn_standart" runat="server" Text="Standart" />
        </div>
        <div>
            tıklanabilir Button<br />
            <asp:Button ID="btn_tikla" runat="server" Text="Tıkla" OnClick="btn_tikla_Click" />
        </div>
        <div>
            işlem Yapalım
            <table>
                <tr>
                    <td>Sayı 1:</td>
                    <td><asp:TextBox ID="tb_sayi1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Sayı2:</td>
                    <td><asp:TextBox ID="tb_sayi2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_topla" runat="server" OnClick="btn_topla_Click" Text="Topla" />
                    </td>
                </tr>
                <tr>
                    <td>Sonuç:</td>
                    <td><asp:TextBox ID="tb_sonuc" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
