<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yolcuekle.aspx.cs" Inherits="ucak_web.yolcuekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" runat="server">
               
           <tr>
                <td>Ad</td>
                <td><asp:TextBox ID="yad" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Soyad</td>
                <td><asp:TextBox ID="ysoyad" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Cinsiyet</td>
                <td><asp:TextBox ID="ycinsiyet" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Doğum Yılı</td>
                <td><input type="number" id="ydogumyili" runat="server" required="required" /></td>
            </tr>
            <tr>
                <td>Nereden</td>
                <td><asp:TextBox ID="ynereden" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Nereye</td>
                <td><asp:TextBox ID="ynereye" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Firma Seçin</td>
                <td><asp:DropDownList ID="firmakodu" runat="server" AutoPostBack="true" /></td>
            </tr>
            <tr>
                <td>Koltuk No</td>
                <td><input type="number" id="ykoltukno" runat="server" required="required" /></td>
            </tr>
                 <tr><td  style="text-align:center;"><asp:FileUpload ID="uplresim" AllowMultiple="true" runat="server" text="Dosya Seç" /> Dosya Seçilmedi</td><td>
                    <asp:Button ID="btnresimyukle" runat="server" Text="Yükle" Onclick="btnresimyukle_Click" /> &nbsp;<asp:Image ID="imgresim" runat="server" /></td></tr>
            <tr>
                <td colspan="2" style="text-align:center;">
           <asp:Button ID="btnkaydet" OnClick="btnkaydet_Click" runat="server" Text="KAYDET"/>
            </td>
            </tr>

            </table>
            <a href="panel.aspx">Geri</a>
        </div>
    </form>
</body>
</html>
