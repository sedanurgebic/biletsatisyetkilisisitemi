<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firmaguncelle.aspx.cs" Inherits="ucak_web.firmaguncelle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <tr><td>ID</td><td><asp:TextBox ID="txtID" runat="server" /></td></tr>
                <tr>
                    <td>Firma Adı</td>
                    <td><asp:TextBox ID="firmaadii" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                       <asp:Button ID="btnkaydet" Text="Düzenle" runat="server" onclick="btnkaydet_Click" />
                    </td>
                </tr>
            </table><br />

            <a href="firmalisteleyonet.aspx">GERİ</a>
        </div>
    </form>
</body>
</html>
