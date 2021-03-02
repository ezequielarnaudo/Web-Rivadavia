<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_NotaCompleta.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_NotaCompleta" %>

<h6 class="title-volanta" style="color:#ff8d1e;" style="text-transform: uppercase;"><%if (NombreEditor == "Sin Autor")
                                                                 {%>
                                                                    <a style="color:#ff8d1e;" href="NotasPorTag.aspx?idTag=<%=IdTag %>"><%=NombreTag.ToUpper()%></a>
                                                               <%}
                                                               else {%>
                                                                   <a style="color:#ff8d1e;" href="LosQueSaben.aspx">LOS QUE SABEN / <%=NombreEditor.ToUpper()%></a>
                                                               <%} %></h6>
<h3 class="title-news"><%=N.Titulo %></h3>

<h6 class="copete"><%=N.Subtitulo %></h6>
<hr>
<div class="container-fluid fecha-nota"><%=FechaPublicacionConv %>
    <div class="fluid" style="padding-top: 15px;">
        <a class="btn btn-sm btn-social btn-fb"
            href="<%="http://www.facebook.com/share.php?u=" + Url + "&title=" + N.Titulo%>" target="_blank"
            title="Compartir esta noticia en Facebook"> <i class="fa fa-facebook-square"></i> Compartir</a>
        <a class="btn btn-sm btn-social btn-tw"
            href="<%="https://twitter.com/intent/tweet?text=" + N.Titulo + "+" + Url%>" target="_blank"
            title="Compartir esta noticia en Twitter">
            <i class="fa fa-twitter"></i> Tweet
        </a>
    </div>
</div><br>

<img class="img-fluid mx-auto d-block" src="<%=N.Foto %>" alt=""
    style="width: 100%;">

<div class="body-news">
    <h6 class="epigrafe"><%=N.DescripcionFoto %></h6>
    <br>
    <div><%=N.TextoCompleto %></div>
    <br>
</div>