<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotasPorTag.aspx.cs" Inherits="NeoGutenberg.NotasPorTag" %>


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







    <div class="container">
        <div class="container-fluid titulo-seccion">
            <h1 class="container-fluid titulo-seccion"><a class="lqs"><%=NombreTagMay %></a></h1>
        </div>
        <div class="row">
            <div class="col-sm-9">
                <div class="card-deck" id="notaTag" runat="server">
                    
                </div>
            </div>

            <div class="col-sm-3" style="background-color: #ededed;">
                <div class="container-fluid">
                    <section class="mas-leidas">
                        <ul style="display: inline;" id="buscador" runat="server">
                            
                        </ul>
                        <br>
                        <h1 class="titulo-leidas">LO MÁS LEÍDO</h1>
                        <ul class="lista-notas" id="notasMasLeidas" runat="server">

                        </ul>
                    </section>
                </div>
            </div>
        </div>

        <div class="container-fluid bd-callout bd-callout-danger">
            <br />
            <nav aria-label="Page navigation example">
            <ul class="pagination">
                <%
                    int idTag = 0;
                    if (Request["idTag"] != null)
                    {
                        idTag = int.Parse(Request["idTag"].ToString());
                    }
                    int cantPag = 0;
                    if (idTag != 0)
                    {

                        cantPag = CantNotas / (int)notasPorPag;
                        if ((CantNotas % (int)notasPorPag) > 0) cantPag++;
                    }
                    if (cantPag > 1) { 
                    for (int a = 0; a < cantPag;a++)
                    {
                        string templateControl = "<li class=\"page-item\"><a class=\"page-link\" href=\"[link]\">[pagina]</a></li>";
                        string link = "/NotasPorTag.aspx?idTag=" + idTag.ToString() + "&pag=" + (a + 1).ToString();
                        Response.Write(templateControl.Replace("[pagina]", (a + 1).ToString()).Replace("[link]", link));

                    }
                    }
                    %>
            </ul>
        </nav>
        </div>

        <hr>
    </div>


<br>



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