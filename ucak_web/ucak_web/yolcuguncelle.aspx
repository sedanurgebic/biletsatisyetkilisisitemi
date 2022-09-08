<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yolcuguncelle.aspx.cs" Inherits="ucak_web.yolcuguncelle" %>

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
            <tr><td>ID</td><td> <asp:TextBox ID="y_id" runat="server" /></td></tr>
             <tr>
                <td>Adı</td>
                <td><asp:TextBox ID="yolcuad" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Soyadı</td>
                <td><asp:TextBox ID="yolcusoyad" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Cinsiyet</td>
                <td><asp:TextBox ID="ycinsiyet" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>Doğum Yılı</td><td><asp:TextBox ID="dyili" runat="server" /></td>

           </tr>
            <tr>
                <td>Nereden</td>
                <td><asp:TextBox ID="neredeny" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Nereye</td>
                <td><asp:TextBox ID="nereyey" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Firma Adı Seçin</td>
                <td><asp:DropDownList ID="firmaadi" runat="server" AutoPostBack="true" /></td>
            </tr>
            <tr><td>Koltuk No</td><td><asp:TextBox ID="koltuknoy" runat="server" /></td>
            </tr>
            <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnkaydet" Text="Kaydet" runat="server" onclick="btnkaydet_Click" />
                    </td>
                  </tr>
                
            </table>
            <a href="yolcuyonet.aspx">Geri</a>
        </div>
    </form>
</body>
</html>
