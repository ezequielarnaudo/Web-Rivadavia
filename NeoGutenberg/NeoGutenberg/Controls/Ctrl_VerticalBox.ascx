<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_VerticalBox.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_VerticalBox" %>
<%@ Register Src="~/Controls/Ctrl_Busqueda.ascx" TagPrefix="uc1" TagName="Ctrl_Busqueda" %>


<div class="box-title">
    <ul id="videos" style="padding-inline-start:initial;" runat="server">
        <!--
        <ul style="display: inline;" id="buscador" runat="server">
            
        </ul>
        -->
        <uc1:ctrl_busqueda runat="server" id="Ctrl_Busqueda" />
        <br />
        <li style="list-style: none;">
            <li>
                <!--Publicidad-->
                <a href="https://www.instagram.com/dronacion/">
                    <img class="img-fluid" src="images/Dronacion727x409.gif">
                </a>
            <!--Publicidad-->
            </li>

            <hr>
            
            <h1 style="cursor: pointer;" class="pantalla"><a class="titulopantalla"
                    href="NotasPorTag.aspx?idTag=14">EN PANTALLA</a></h1>
        
        <hr>
        </li>
        <!--videos-->
        
    </ul>
</div>
<hr>
<section class="mas-leidas" style="font-family:'Raleway';">

    <h1 class="titulo-leidas">LO MÁS LEÍDO</h1>
    <ul class="lista-notas" id="notasMasLeidas" runat="server">
        
    </ul>
</section>