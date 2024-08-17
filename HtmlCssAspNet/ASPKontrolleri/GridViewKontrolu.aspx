<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewKontrolu.aspx.cs" Inherits="HtmlCssAspNet.ASPKontrolleri.GridViewKontrolu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .alternate{
            background-color:#ededed
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- <asp:GridView ID="gv_kategoriler" runat="server"></asp:GridView>--%>
            <asp:GridView ID="gv_kategoriler" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="CategoryID" HeaderText="No" />
                    <asp:BoundField DataField="CategoryName" HeaderText="İsim" />
                </Columns>
                <AlternatingRowStyle CssClass="alternate" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
