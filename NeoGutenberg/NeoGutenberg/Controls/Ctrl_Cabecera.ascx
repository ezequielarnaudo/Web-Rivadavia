<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Cabecera.ascx.cs" Inherits="NeoGutenberg.Controls.Ctrl_Cabecera" %>

<div class="container-fluid logo-top">
    <div class="row">
        <div class="col-sm-9" style="background-color:white;">
            <div class="logohome">
                <a href="Default.aspx">
                    <img class="img-fluid mx-auto d-block" src="images/Banner nav.png" alt=""
                        style="height: 100px;">
                </a>
            </div>
        </div>
        <div class="date-place" style="margin-top: 15px;">
            <a class="date1"><%=FechaActual %></a>
            <br>
            <a class="place1">Villa María - Córdoba</a>
        </div>
    </div>
</div>