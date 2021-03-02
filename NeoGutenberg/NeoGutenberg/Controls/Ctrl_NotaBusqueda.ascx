<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_NotaBusqueda.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_NotaBusqueda" %>

<div class="container-fluid" style="padding-bottom: 15px;">
    <div class="card">
        <div class="row ">
            <div class="col-md-4 container-fluid" style="display: flex;">
                <img src="<%=N.Foto %>" class="img-fluid">
            </div>
            <div class="col-md-8 px-3">
                <div class="card-block px-3">
                    <a href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>">
                        <h4 class="card-title"><%=N.Titulo %></h4>
                    </a>
                    <i class="fa fa-clock-o" aria-hidden="true"> <%=FechaPublicacionConv %></i>
                    <p class="card-text"><%=N.Subtitulo %></p>
    
                    <a href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>" class="btn btn-primary">Leer Más</a>
                </div>
            </div>
        </div>
    </div>
</div>