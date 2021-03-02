<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuienesSomos.aspx.cs" Inherits="NeoGutenberg.QuienesSomos" %>

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
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
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

    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-sm-9">
                <h1 class="title-qs">Mundo Empresas</h1>
                <br>
                <h4 class="title-qs2">La plataforma de noticias del ámbito empresarial y emprendedor de Villa María y la
                    región.</h4>
                <br>


                <div class="body-qs">
                    <h6 class="title-qs3"><i class='fas fa-angle-double-right' style='font-size:12px'></i> ¿Quiénes
                        Somos?</h6>
                    <br>
                    <div>Mundo Empresas asume el compromiso de ser la plataforma que refleje la actualidad, novedades,
                        opiniones, historias y perspectivas de las compañías locales y de la región.
                    </div>
                    <br>
                    <div>La visión de su fundador y director, Damián Stupenengo, es la de poder otorgar visibilidad y
                        voz en MundoEmpresas.com.ar a micro, pequeñas, medianas, grandes firmas, como también a los
                        tantos emprendedores que hay en nuestra zona.</div>
                    <br>
                    <div>El objetivo es contarle a la sociedad en general cómo crecen las industrias y comercios de
                        nuestra comunidad y qué opinan quienes son referentes de los diversos sectores productivos y
                        comerciales.
                    </div>
                    <br>
                    <div>En Mundo Empresas encontrará contenido multimedia de calidad que seguirá diariamente cada paso
                        dado por el ámbito empresarial y emprendedor de los más variados sectores productivos que tiene
                        Villa María y el interior de Córdoba en general; además de toda la información pertinente al
                        sector como eventos, convocatorias, entrevistas, cursos, y mucho más.</div>
                    <br>

                    <h1>TE AYUDAMOS CON TU TRANSFORMACIÓN DIGITAL!</h1>
                    <br>
                    <div>Mundo Empresas puede ayudar a que vos y tu marca crezcan. Un especializado equipo de partners
                        en comunicación, marketing, programación, desarrollos IT y economía forman parte de los
                        cimientos de Mundo Empresas, para poder ofrecer soluciones a las más variadas necesidades de tu
                        empresa, comercio o industria.</div>
                    <br>
                    <h6 class="title-qs3"><i class='fas fa-angle-double-right' style='font-size:12px'></i> <strong>LE
                            DAMOS A TU EMPRESA EL IMPULSO QUE NECESITA</strong></h6>
                    <br>
                    <ul class="list-group">
                        <li class=""><i class='fas fa-microphone' style='font-size:12px'></i> Comunicación Institucional
                        </li>
                        <li class=""><i class='fas fa-microphone' style='font-size:12px'> </i> Prensa</li>
                        <li class=""><i class='fas fa-microphone' style='font-size:12px'> </i> Eventos</li>
                        <li class=""><i class='fas fa-microphone' style='font-size:12px'></i> Conferencias</li>
                        <li class=""><i class='fas fa-microphone' style='font-size:12px'></i> Difusión en medios</li>
                        <li class=""><i class='fas fa-microphone' style='font-size:12px'></i> Asesoramiento</li>
                    </ul>
                    <hr>
                    <ul class="list-group">
                        <li class=""><i class='far fa-lightbulb' style='font-size:12px'></i> Marketing</li>
                        <li class=""><i class='far fa-lightbulb' style='font-size:12px'> </i> Generación de contenidos
                        </li>
                        <li class=""><i class='far fa-lightbulb' style='font-size:12px'> </i> Social Media Manager</li>
                        <li class=""><i class='far fa-lightbulb' style='font-size:12px'> </i> Base de datos de clientes
                            potenciales</li>
                        <li class=""><i class='far fa-lightbulb' style='font-size:12px'></i> Asesoría Comercial</li>
                        <li class=""><i class='far fa-lightbulb' style='font-size:12px'></i> Campañas publicitarias</li>
                    </ul>
                    <hr>
                    <ul class="list-group">
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Desarrollo Web</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'> </i> E-commerce a medida</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'> </i> Desarrollo de software</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Arquitectura de redes</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Open VPN, filtrado de
                            trafico, QoS</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Instalación y configuración
                            de Mikrotik</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Seguridad de redes</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Servicio de backup y respaldo
                            de datos</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Configuración de equipos</li>
                        <li class=""><i class='fas fa-desktop' style='font-size:12px'></i> Asesoramiento IT</li>
                    </ul>
                    <hr>
                    <ul class="list-group">
                        <li class=""><i class='fa fa-usd' style='font-size:12px'></i> Planificación Estratégica
                            Empresarial</li>
                        <li class=""><i class='fa fa-usd' style='font-size:12px'> </i> Estudio de Mercado
                        </li>
                        <li class=""><i class='fa fa-usd' style='font-size:12px'> </i> Selección de Personal</li>
                        <li class=""><i class='fa fa-usd' style='font-size:12px'> </i> Reingeniería administrativa</li>
                        <li class=""><i class='fa fa-usd' style='font-size:12px'></i> Análisis Económico – Financiero
                        </li>
                    </ul>
                    <hr>



                    <div class="container-fluid text-center">
                        <a class="btn publi" href="Contacto.aspx" style="font-family: Raleway, sans-serif">¡Contactanos
                            para saber mas! </a>
                    </div>


                </div>

            </div>




        </div>

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