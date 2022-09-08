<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kul_kayit.aspx.cs" Inherits="ucak_web.kul_kayit" %>

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
             <tr>
                <td>Ad</td>
                <td><asp:TextBox ID="txtad" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Soyad</td>
                <td><asp:TextBox ID="txtsoyad" runat="server"></asp:TextBox></td>
            </tr>
            </tr>     
                <tr><td>Kullanıcı Adı</td>
                    <td>
                        <asp:TextBox ID="txtkullaniciadi" runat="server"></asp:TextBox>
                    </td>
                 </tr>

                <tr><td>Şifre</td>
                    <td>
                        <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
                    </td>
                 <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnkaydet" Text="Kaydet" runat="server" Onclick="btnkaydet_Click" />
                    </td>
                  </tr>
                
                 </table>
            <a href="kul_giris.aspx">Geri</a>
        </div>
    </form>
</body>
</html>
