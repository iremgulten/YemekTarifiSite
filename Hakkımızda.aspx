<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkımızda.aspx.cs" Inherits="YemekTarifiSite.Hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .baslik {
            font-size: xx-large;
            color: #660066;
            text-transform: uppercase;
            font-family: "Comic Sans MS";
            background-color: #D6ACFF;
            border-radius: 17%;
            text-align:center;
        }
        .icerik{
            font-size: small;
            font-family: "Comic Sans MS";
            color: #000000;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="baslik">
        HAKKIMIZDA
    </p>
    <p >
        <asp:DataList ID="DataList2" runat="server" Width="749px" Height="338px">
            <ItemTemplate>
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>' CssClass="icerik"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>

    <br />

    <asp:Image ID="Image1" runat="server" Style="border-radius:3%;" Height="330px" Width="743px" ImageUrl="~/resimler/blog_pic.jpg" />

    <br />

</asp:Content>
