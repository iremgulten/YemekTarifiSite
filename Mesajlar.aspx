<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>

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

        .auto-style32 {
            font-weight: bold;
            font-size: large;
            margin-left: 0px;
        }

        .auto-style27 {
            width: 33px;
            background-color: #CCCCCC;
            height: 50px;
        }

        .auto-style24 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style30 {
            color: #333333;
            font-family: "Comic Sans MS";
            font-size: large;
            background-color: #CCCCCC;
            height: 50px;
        }
        .auto-style33 {
            font-family: "Comic Sans MS";
            font-size: large;
        }
        .auto-style34 {
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
                <td class="auto-style30">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
         <%--<asp:DataList ID="DataList1" runat="server" CssClass="auto-style22" Width="447px" style="margin-top: 0px" >
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" style="font-family: 'Comic Sans MS'" Text='<%# Eval("Mesaj_Gonderen") %>'></asp:Label>
                            </strong>&nbsp;</td>
                        <td class="auto-style33">
                           <a href="MesajDetay.aspx?Mesaj_Id=<%#Eval("Mesaj_Id") %>"><asp:Image ID="Image3" runat="server" ImageUrl="~/resimler/read.png" Height="40px" Width="40px" /></a> 
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>
         <div class="auto-style34">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style33" Width="746px">
                 <Columns>
                     <asp:BoundField DataField="Mesaj_Gonderen" HeaderText="AD SOYAD" />
                     <asp:BoundField DataField="Mesaj_Baslik" HeaderText="BAŞLIK" />
                     <asp:HyperLinkField DataNavigateUrlFields="Mesaj_Id" DataNavigateUrlFormatString="~/MesajDetay.aspx?Mesaj_Id={0}" HeaderImageUrl="~/resimler/read.png" Text="İncele" />
                 </Columns>
                 <HeaderStyle BackColor="#CCFFFF" />
             </asp:GridView>
         </div>
    </asp:Panel>
</asp:Content>
