<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSite.YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }

        .auto-style16 {
            margin-left: 40px;
        }

        .auto-style17 {
            font-family: "Comic Sans MS";
            text-align: right;
            font-size: medium;
            width: 211px;
        }

        .auto-style19 {
            font-weight: bold;
            font-family: "Comic Sans MS";
            font-size: medium;
        }

        .auto-style20 {
            font-weight: bold;
            font-family: "Comic Sans MS";
        }

        .auto-style21 {
            text-align: left;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Yemek Ad: </strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="323px" Height="45px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Malzemeler:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox2" runat="server" Height="127px" TextMode="MultiLine" Width="324px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Tarif:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox3" runat="server" Height="209px" TextMode="MultiLine" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Kategori:</strong></td>
            <td class="auto-style16">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="326px" Height="34px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style21">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="322px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style21"><strong>
                <br />
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="42px" Text="GÜNCELLE" Width="249px" OnClick="Button1_Click" BackColor="#99CCFF" />
            </strong></td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style21"><strong>&nbsp;&nbsp;
                <asp:Button ID="btn_sec" runat="server" BackColor="#99CCFF" CssClass="auto-style20" Height="42px" OnClick="btn_sec_Click" Text="GÜNÜN YEMEĞİ SEÇ" Width="249px" /></a>
            </strong></td>
        </tr>
    </table>
</asp:Content>
