<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kul_giris.aspx.cs" Inherits="ucak_web.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
     <div class="col-md-12">
        <asp:Label ID="lblsessionid" runat="server" />
        <asp:Label ID="lblbaslik" runat="server" ForeColor="red" />
        <br />
        <asp:Label runat="server" Text="Kullanıcı Adı"></asp:Label> <asp:TextBox ID="txtkadi" runat="server" CssClass="form-control"></asp:TextBox>
        <br/>
        <asp:Label runat="server" Text="Şifre"></asp:Label><asp:TextBox ID="txtsifre" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Button ID="btngiris" CssClass="btn btn-green" Onclick="btngiris_Click" runat="server" Text="GİRİŞ" />
         <br />
        <asp:Label ForeColor="Red" runat="server" ID="lblkontrol"></asp:Label>
    </div>
    <div class="col-md-6">
        <a href="kul_kayit.aspx">Kullanıcı Ekle</a>
    </div>
</asp:Content>
