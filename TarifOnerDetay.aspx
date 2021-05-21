<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSite.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 743px;
            height: 414px;
            float: left;
            background-color: #8AC5FF;
        }
        .auto-style18 {
            text-align: right;
            font-family: "Comic Sans MS";
            width: 284px;
            font-size: small;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style15">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </strong>
            <tr>
                <td class="auto-style18"><strong>Tarif Ad:</strong></td>
                <strong>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="275px"></asp:TextBox>
                </td>
                </strong>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Tarif Malzemeler :</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="274px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Yapılış : </strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox3" runat="server" Height="123px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Tarif Resim:</strong></td>
                <td class="auto-style25">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="35px" Width="281px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="274px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Öneren Mail:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Kategori:</strong></td>
                <td class="auto-style21">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="280px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style21"><strong>&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style24" OnClick="Button1_Click" style="font-weight: bold; font-family: 'Comic Sans MS'" Text="ONAYLA" Width="225px" Height="40px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
