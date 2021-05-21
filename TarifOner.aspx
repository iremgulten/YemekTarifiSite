<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .baslik{
            width: 128px;
            text-align: right;
            font-size: medium;
            height: 33px;
            color: #000000;
        }
        .box {
            border: 2px solid #456879;
            border-radius: 10px;
        }

        .auto-style21 {
            font-family: "Comic Sans MS";
            width: 750px;
        }



        
        .auto-style22 {
            width: 287px;
        }
        .auto-style23 {
        width: 207px;
    }
        .auto-style24 {
        width: 207px;
        text-align: right;
        font-size: medium;
        height: 33px;
        color: #000000;
    }



        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style21">
        <tr>
            <td class="auto-style23" >&nbsp;</td>
            <td class="auto-style22" >&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">Tarif Ad :</td>
            <td class="auto-style22">
                <asp:TextBox ID="Txt_Ad" runat="server" Width="391px" CssClass="box" Height="37px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Malzemeler:</td>
            <td class="auto-style22">
                <asp:TextBox ID="Txt_Mlz" runat="server" Height="80px" TextMode="MultiLine" Width="391px" CssClass="box"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Yapılış :</td>
            <td class="auto-style22">
                <asp:TextBox ID="Txt_Yapilis" runat="server" Height="150px" TextMode="MultiLine" Width="391px" CssClass="box"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Resim :</td>
            <td class="auto-style22">
                <asp:FileUpload ID="Upload_Resim" runat="server" Width="391px" Height="35px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Tarif Öneren :</td>
            <td class="auto-style22">
                <asp:TextBox ID="Txt_Oneren" runat="server" Width="391px" CssClass="box" Height="37px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">Mail Adresi : </td>
            <td class="auto-style22">
                <asp:TextBox ID="Txt_Mail" runat="server" TextMode="Email" Width="391px" CssClass="box" Height="36px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" >&nbsp;</td>
            <td class="auto-style22" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btn_Oner" runat="server" BackColor="#99CCFF" CssClass="box" Height="46px" OnClick="Button1_Click" Text="Tarif Öner" Width="269px" />
           </td>
        </tr>
        <tr>
            <td class="auto-style23" >&nbsp;</td>
            <td class="auto-style22" >
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
