<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_NotaPorTag.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_NotaPorTag" %>


<%if (NombreEditor == "Sin Autor") {%>
<div class="card carta-tag">
    <%if (NombreTag == "En Pantalla") { %>
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="<%=UrlVideo %>"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
        </div>
    <%} else {%>
    <img class="card-img-top" src="<%=N.Foto %>" alt="Card image"
        style="width:100%">
    <%} %>
    <div class="card-body">
        <span class="tag"><%=NombreTag %></span>
        <%if (NombreTag == "En Pantalla") {%>
            <a href="<%="https://www.youtube.com/watch?v=" + UrlVideo.Substring(30) %>" target="_blank">
        <%} else {%>
            <a href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>">
        <%} %>
            <h4 class="card-title"><%=N.Titulo %></h4>
        </a>
        <i class="fa fa-clock-o" aria-hidden="true"> <%=FechaPublicacionConv %></i>
        <br>
        <p class="card-text"><%=N.Subtitulo %></p>
        <%if (NombreTag == "En Pantalla") {%>
            <a href="<%="https://www.youtube.com/watch?v=" + UrlVideo.Substring(30) %>"
                class="btn btn-primary" target="_blank">Ir a YouTube</a>
        <%} else { %>
        <a href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>"
            class="btn btn-primary">Leer Mas</a>
        <%} %>
    </div>
</div>
<%} %>