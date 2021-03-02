<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NeoGutenberg.Default" %>

<%@ Register Src="~/Controls/Ctrl_Cabecera.ascx" TagPrefix="uc1" TagName="Ctrl_Cabecera" %>


<!doctype html>
<html lang="en">

<head>
    <!-- Google Tag Manager -->
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-MMDT3VC');
    </script>
    <!-- End Google Tag Manager -->

    <title> Mundo Empresas | Plataforma de Noticias | Villa María</title>
    <!-- Required meta tags -->
    <meta name="description"
        content="La plataforma de noticias del ámbito empresarial y emprendedor de Villa María y la región | Reflejamos la realidad de empresas, industrias y emprendedores.">
    <meta name="keywords"
        content="empresa, emprendedores, industrias, negocios, empresarios, PyMes, Economía, Mercados, Marketing, Villa Maria, Córdoba, actualidad, novedades, contexto, análisis, opinión, noticias, finanzas">
    <meta name="author" content="Neo Solutions">
    <meta name="copyright" content="Mundo Empresas">
    <meta name="distribution" content="Global">
    <meta name="document-type" content="Public">
    <meta name="rating" content="General">
    <meta name="language" content="sp-us">
    <meta name="robots" content="all">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--Meta para Facebook-->
    <meta property="og:url" content="https://www.mundoempresas.com.ar/Default.aspx" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Mundo Empresas | Plataforma de Noticias" />
    <meta property="og:image" content="images/LOGO-HORIZONTAL-COLOR.png" />
    <meta property="og:image:width" content="1920" />
    <meta property="og:iamge:height" content="1080" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="estilos.css">
    <link rel="icon" type="" href="images/favicon.ico">

</head>

<header id="header" runat="server">

</header>


<body>

    <form runat="server">

        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MMDT3VC" height="0" width="0"
                style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <div class="container-fluid" style="background-color: white;">
            <div class="fecha-responsive" style="margin-top: 10px;">
                <div class="estilo-fecha">
                    <a><%=DateTime.Today.ToString("dd-MM-yyyy") %> - Villa María, Córdoba</a>
                    <br>
                </div>
            </div>
        </div>

        <!--Navbar-->
        <nav class="navbar navbar-expand-lg sticky-top navbar-dark primary-color navegacion"
            style="font-family: Raleway, sans-serif;" id="barra" runat="server">

        </nav>
        <!--/.Navbar-->
        <!---------------------------------------------------------------------
    
    <br>
    <div class="container-fluid">
        <div class="table-responsive-sm">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>DOLAR SOLIDARIO</th>
                        <th>DOLAR LIBRE</th>
                        <th>CONTADO CON LIQUI</th>
                        <th>DOLAR BOLSA</th>
                        <th>DOLAR BCO NACIÓN</th>
                        <th>RIESGO PAÍS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>138.19</td>
                        <td>168</td>
                        <td>145.41</td>
                        <td>139.38</td>
                        <td>83.75</td>
                        <td>1464</td>
                        <td>PUBLICIDAD</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    


    <div class="container-fluid">
        <div class="row">
            <div class="col cotizaciones">
                DOLAR "SOLIDARIO"
            </div>
            <div class="col cotizaciones">
                DOLAR LIBRE
            </div>
            <div class="col cotizaciones">
                CONTADO CON LIQUI
            </div>
            <div class="col cotizaciones">
                DOLAR BOLSA
            </div>
            <div class="col cotizaciones">
                DOLAR BCO NACIÓN
            </div>
            <div class="col cotizaciones">
                RIESGO PAÍS
            </div>
            <div class="col container-fluid cotizaciones" style="background-color: yellow;">
                <img src="" class="img-fluid">PUBLICIDAD DE COTIZACIONES
            </div>
        </div>
    </div>
    ------------------------------------------------------------------------->
        <!--publicidad 1-->
        <!-------------------
    <div class="bd-callout bd-callout-danger">
        <img class="img-fluid" src="publicidad/970x90.png" >ESPACIO PUBLICITARIO</img>
    </div><br>
    ----------------------->



        <!--PUBLICIDAD 1-->
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <img class="img-fluid" src="images/portada-web.png" />
                </div>
            </div>
        </div>
        <!--PUBLICIDAD 1-->





        <!--publicidad 1-->
        <!--<div class="container">
        <div class="col-lg-12">
            <img class="img-fluid" src="publicidad/970x90.png" style="max-width: 100%;height: auto;display:block;">
        </div>
    </div>-->

        <br>






        <!--notas principales-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12" style="background-color:white;">
                    <div class="card-deck" id="notasPrincipales" runat="server">

                    </div>
                    <!--notas principales-->

                    <!--PUBLICIDAD 2-->
                    <!--<br>
                    <div class="container-fluid">
                    <img class="img-fluid" src="images/18-CIRCUNV-infmundoemp.gif">
                    </div><br>-->
                    <!--PUBLICIDAD 2-->

                </div>
            </div>
        </div>


        <!--notas + vertical box-->
        <div class="container" style="display: contents;">

            <div class="row vertical" style="margin-left: 0px;" style="margin-right: 0px;">
                <div class="col-sm-9 vertical1">
                    <div class="card-deck" id="notasMedio1" runat="server">

                    </div>

                    <!--PUBLICIDAD 3-->
                    <br>
                    <div class="container-fluid">
                        <a href="https://www.villamaria.gob.ar/"><img class="img-fluid"
                                src="images/18-CIRCUNV-infmundoemp.gif"></a>
                    </div><br>
                    <!--PUBLICIDAD 3-->

                    <div class="card-deck" id="notasMedio2" runat="server">

                    </div>

                    <!--PUBLICIDAD 4-->
                    
                    <!--PUBLICIDAD 4-->

                    <div class="card-deck" id="notasMedio3" runat="server">

                    </div>
                    <!--PUBLICIDAD 5-->
                    <br>
                    <div class="container-fluid">
                        <a href="https://www.instagram.com/digitalistas.consultora/"><img class="img-fluid"
                                src="images/DIGITALISTAS.png"></a>
                    </div><br>
                    <!--PUBLICIDAD 5-->
                    <div class="card-deck" id="notasMedio4" runat="server">

                    </div>

                </div>

                <div class="col-sm-3 ajuste-vertical" style="background-color: #ededed;" id="verticalBox"
                    runat="server">

                </div>
            </div>
            <!--PUBLICIDAD 6-->

            <!--PUBLICIDAD 6-->
            <hr>
        </div>

        <!--notas + vertical box-->



        <hr>

        <!--notas de abajo-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12" style="background-color:white;">
                    <div class="card-deck" id="notasFinal" runat="server">

                    </div>
                    <!--notas-->

                    <!--Publicidad-->
                    <!--<br>
                <div class="container-fluid">
                    <img class="img-fluid" src="publicidad/970x90.png">
                </div><br>-->
                    <!--Publicidad-->
                </div>







            </div>
        </div>

        <!--PUBLICIDAD 7-->

        <!--PUBLICIDAD 7-->

        <!--Última fila de notas agregadas para completar 16-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12" style="background-color:white;">
                    <div class="card-deck" id="notasFinal2" runat="server">

                    </div>
                    <!--notas-->

                    <!--Publicidad-->
                    <!--<br>
                <div class="container-fluid">
                    <img class="img-fluid" src="publicidad/970x90.png">
                </div><br>-->
                    <!--Publicidad-->
                </div>







            </div>
        </div>

        <!--PUBLICIDAD 8-->

        <!--PUBLICIDAD 8-->

        <!--fin vertical content-->





        <!--LOS QUE SABEN HOME INICIO-->
        <div class="container-fluid">
            <div class="container-fluid titulo-seccion">
                <h1 class="container-fluid titulo-seccion"><a class="lqs" href="LosQueSaben.aspx">LOS QUE SABEN</a>
                </h1>
            </div>
            <div class="row" id="editores" runat="server">

            </div>
        </div>

        <hr>
        <!--LOS QUE SABEN HOME FINAL-->





        <!--Footer-->

        <footer id="footer" class="footer-1" style="width: 100%;" runat="server">

        </footer>

        <!-- End Footer-->





        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
        </script>

    </form>

</body>

</html>