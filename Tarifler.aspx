<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifiSite.Tarifler" %>
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
            text-align: right;
        }
        .auto-style34 {
            text-align: center;
        }
        .auto-style35 {
            font-size: large;
            font-family: "Comic Sans MS";
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <asp:Panel ID="Panel1" runat="server">

        <table class="auto-style16">
            <tr>
                <td class="auto-style31">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style32" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style30">ONAYSIZ TARİF LİSTESİ</td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" style="font-family: 'Comic Sans MS'" Text='<%# Eval("Tarif_Ad") %>'></asp:Label>
                            </strong>&nbsp;</td>
                        <td class="auto-style33">
                       <a href="TarifOnerDetay.aspx?Tarif_Id=<%#Eval("Tarif_Id")%>"> <asp:Image ID="Image3" runat="server" ImageUrl="~/resimler/offer.png" Height="40px" Width="40px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>
         <div class="auto-style34">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style35" Width="748px">
                 <Columns>
                     <asp:BoundField DataField="Tarif_Ad" HeaderText="YEMEK ADI" />
                     <asp:HyperLinkField DataNavigateUrlFields="Tarif_Id" DataNavigateUrlFormatString="~/TarifOnerDetay.aspx?Tarif_Id={0}" HeaderImageUrl="~/resimler/offer.png" Text="Onayla" />
                 </Columns>
                 <HeaderStyle BackColor="#CCFFFF" />
             </asp:GridView>
         </div>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" style="margin-top=20px;" >

        <table class="auto-style16">
            <tr>
                <td class="auto-style31">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style32" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style24" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                </td>
                <td class="auto-style30">ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

        <asp:Panel ID="Panel4" runat="server">
         <%--<asp:DataList ID="DataList2" runat="server" CssClass="auto-style22" Width="447px" style="margin-top: 0px" >
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style19">
                            <strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style21" style="font-family: 'Comic Sans MS'" Text='<%# Eval("Tarif_Ad") %>'></asp:Label>
                            </strong>&nbsp;</td>
                        <td class="auto-style33">
                       <a href="TarifOnerDetay.aspx?Tarif_Id=<%#Eval("Tarif_Id")%>"> <asp:Image ID="Image3" runat="server" ImageUrl="~/resimler/offer.png" Height="40px" Width="40px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>--%>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style35" Width="748px">
                 <Columns>
                     <asp:BoundField DataField="Tarif_Ad" HeaderText="YEMEK ADI" />
                     <asp:HyperLinkField DataNavigateUrlFields="Tarif_Id" DataNavigateUrlFormatString="~/TarifOnerDetay.aspx?Tarif_Id={0}" HeaderImageUrl="~/resimler/offer.png" Text="Onayla" />
                 </Columns>
                 <HeaderStyle BackColor="#CCFFFF" />
             </asp:GridView>
    </asp:Panel>

</asp:Content>
