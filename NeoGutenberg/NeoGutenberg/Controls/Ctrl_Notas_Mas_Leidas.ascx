<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Notas_Mas_Leidas.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_Notas_Mas_Leidas" %>


<li class="list-notes"><span class="pelotita"><%=N.OrdenNota %></span><a class="item-nota" href="Nota-Autor-Gral.aspx?idNota=<%=N.Id %>"><%=N.Titulo %></a></li>