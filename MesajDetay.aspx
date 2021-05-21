<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifiSite.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            text-align: right;
            font-family: "Comic Sans MS";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong><em>Mesaj Gönderen:</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="275px" Height="34px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong><em>Başlık:</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="274px" Height="31px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong><em>Mail:</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="274px" Height="26px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong><em>Mesaj İçerik:</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="205px" TextMode="MultiLine" Width="276px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
