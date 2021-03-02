<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Nota_Desplegable.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_Nota_Desplegable" %>

<li><img class="img-fluid" width="240" height="240"
        src="<%=N.Foto %>"><a
        class="estilo-nota-autor" href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>">
        <p><%=N.Titulo %></p>
    </a>
</li>