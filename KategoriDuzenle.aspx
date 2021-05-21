<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiSite.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            width: 220px;
            font-family: "Comic Sans MS";
            text-align: right;
        }
        .auto-style17 {
            margin-left: 40px;
        }
        .auto-style18 {
            font-weight: bold;
            font-family: "Comic Sans MS";
            font-size: medium;
        }
        .auto-style19 {
            font-size: medium;
        }
        .auto-style20 {
            width: 220px;
            font-family: "Comic Sans MS";
            text-align: right;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>KATEGORİ AD: </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style19"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>ADET: </strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style19"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>RESİM: </strong></td>
            <td class="auto-style17">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="229px" CssClass="auto-style19" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>&nbsp; &nbsp;</strong></td>
            <td class="auto-style17"><span class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="48px" OnClick="Button1_Click" Text="GÜNCELLE" Width="141px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
