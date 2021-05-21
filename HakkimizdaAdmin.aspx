<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSite.HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 100%;
        }

        .auto-style31 {
            width: 31px;
            font-size: large;
            background-color: #CCCCCC;
            height: 50px;
        }

        .auto-style30 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: large;
            background-color: #CCCCCC;
            height: 50px;
        }

        .auto-style27 {
            width: 33px;
            background-color: #CCCCCC;
            height: 50px;
        }
        .auto-style32 {
            font-family: "Comic Sans MS";
            font-weight: bold;
        }
        .auto-style33 {
            font-family: "Comic Sans MS";
            font-weight: bold;
            font-size: large;
        }
        .auto-style34 {
            font-size: medium;
            font-style: italic;
        }
        .auto-style35 {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style31">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style32" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style30">HAKKIMIZDA GÜNCELLE</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style16">
            <tr>
                <td class="auto-style35"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style34" Height="276px" TextMode="MultiLine" Width="466px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style33" Height="41px" OnClick="Button3_Click" Text="GÜNCELLE" Width="366px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
