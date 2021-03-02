<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultadoBusqueda.aspx.cs" Inherits="NeoGutenberg.ResultadoBusqueda" %>

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

    <title>Mundo Empresas | Plataforma de Noticias | Villa María</title>
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

    <br>










    <div class="container">
        <div class="container-fluid titulo-seccion">
            <h1 class="container-fluid titulo-seccion"><a class="lqs">RESULTADOS</a></h1>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-9">
                    <div class="card-deck" id="notaBusqueda" runat="server">
                        
                    </div>
                </div><br>
    <!-----------------------------------------------------------------
                <div class="col-sm-3 container-fluid" style="background-color: #ededed;">
                    <div class="container-fluid">
                        <section class="mas-leidas">
                            <ul style="display: inline;">
                                <li style="list-style: none;">
                                    <form class="form-inline justify-content-lg-center" style="flex-flow: initial;">
                                        <input class="form-control mr-sm-2" type="search" placeholder="Buscar Nota"
                                            aria-label="Search">
                                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                                    </form>
                                </li>
                            </ul>
                            <br>
                            <h1 class="titulo-leidas">LO MÁS LEÍDO</h1>
                            <ul class="lista-notas">
                                <li class="list-notes"><span class="pelotita">1</span><a class="item-nota" href="">NOTA
                                        1</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">2</span><a class="item-nota" href="">NOTA
                                        2</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">3</span><a class="item-nota" href="">NOTA
                                        3</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">4</span><a class="item-nota" href="">NOTA
                                        4</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">5</span><a class="item-nota" href="">NOTA
                                        5</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">6</span><a class="item-nota" href="">NOTA
                                        6</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">7</span><a class="item-nota" href="">NOTA
                                        7</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">8</span><a class="item-nota" href="">NOTA
                                        8</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">9</span><a class="item-nota" href="">NOTA
                                        9</a>
                                </li>
                                <li class="list-notes"><span class="pelotita">10</span><a class="item-nota" href="">NOTA
                                        10</a>
                                </li>
                            </ul>
                        </section>
                    </div>
        
        
                </div>
                -------------------------------------------------------------------------->
            </div>
        </div>

    </div>
    <hr>






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
</body>

</html>