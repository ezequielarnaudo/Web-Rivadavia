<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Nota.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_Nota" %>

<!-- ESTO ES PARA LAS NOTAS DE TAMANO MEDIANO. LAS QUE APARECEN AL PRINCIPIO Y AL FINAL. NOTAS PRINCIPALES -->

<div class="card">
    <img class="card-img-top" src="<%=N.Foto %>" alt="Card image"
        style="width:100%">
    <div class="card-body">
        <span class="tag"><%=NombreTag %></span>
        <a href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>">
            <h4 class="card-title"><%=N.Titulo %></h4>
            <!--<asp:HiddenField runat="server" ID="idNota" />-->
        </a>
        <i class="fa fa-clock-o" aria-hidden="true"> <%=FechaPublicacionConv %></i>
        <br>
        <p class="card-text"><%=N.Subtitulo %></p>
        <a href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>" class="btn btn-primary">Leer Más</a>
    </div>
</div>