﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WybraneProdukty.ascx.cs" Inherits="Kontrolki_WybraneProdukty" %>
<asp:ListView ID="WybraneProduktyListView" runat="server" 
    ItemPlaceholderID="listaPlaceholder">
<LayoutTemplate>
<strong>Wybrane produkty:</strong>
<asp:PlaceHolder ID="ListaPlaceHolder" runat="server" />
</LayoutTemplate>

<ItemTemplate>
<div class="OknoProduktow">
<asp:HyperLink ID="HyperLink1" runat="server"
NavigateUrl='<%# "~/Szczegoly.aspx?id="+Eval("ProductID") %>'
Text='<%#Eval("Name") %>' /> <br />
<asp:Image ID="ProduktyImage" runat="server"
ImageUrl='<%# "~/Miniatura.aspx?id=" + Eval("ProductID") %>'
AlternateText='<%# Eval("Name") %>' /> <br />
Kategoria: <%#Eval("ProductCategory.Name") %><br />
Kolor: <%#Eval("Color") %><br />
Cena: <%#Eval("ListPrice", "{0:C}") %><br />
</div>
</ItemTemplate>

</asp:ListView>

