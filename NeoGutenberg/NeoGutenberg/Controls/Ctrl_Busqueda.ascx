<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Busqueda.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_Busqueda" %>

<li style="list-style: none;">
    <div class="form-inline justify-content-lg-center" style="flex-flow: initial;" runat="server">
        <!--<input class="form-control mr-sm-2" type="search" placeholder="Buscar Nota"
            aria-label="Search">-->
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox class="form-control mr-sm-2" ID="txtSearch" placeholder="Buscar Nota" runat="server"/>
        <!--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>-->
        <asp:Button class="btn btn-outline-success my-2 my-sm-0" ID="btnSearch" Text="Buscar" runat="server"
            OnClick="btnSearch_Click"/>
    </div>
</li>