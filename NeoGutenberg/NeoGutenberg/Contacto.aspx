<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="NeoGutenberg.Contacto" %>

<!doctype html>
<html lang="en">

<head>
 
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MMDT3VC');</script>
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
    <link rel="stylesheet" href="form.css">
    <link rel="icon" type="" href="images/favicon.ico">

</head>

<header id="header" runat="server">

</header>


<body>

    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MMDT3VC"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
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

    <form action="contacto.php" method="get">

    <div class="container">
        <div class="container-fluid titulo-seccion">
            <h1 class="container-fluid titulo-seccion"><a class="lqs">CONTACTO</a></h1>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <form class="form-horizontal" method="post">
                        <fieldset>
                            <legend class="header">NOS INTERESA LO QUE TENES PARA DECIR</legend>

                            <div class="form-group">
                                <span class="col-md-1 col-md-offset-2 text-center"><i
                                        class="fa fa-user bigicon"></i></span>
                                <div class="col-md-8">
                                    <input id="fname" name="frmname" type="text" placeholder="Nombre" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <span class="col-md-1 col-md-offset-2 text-center"><i
                                        class="fa fa-user bigicon"></i></span>
                                <div class="col-md-8">
                                    <input id="lname" name="frmapellido" type="text" placeholder="Apellido"
                                        class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <span class="col-md-1 col-md-offset-2 text-center"><i
                                        class="fa fa-envelope-o bigicon"></i></span>
                                <div class="col-md-8">
                                    <input id="email" name="frmemail" type="text" placeholder="Tu email"
                                        class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <span class="col-md-1 col-md-offset-2 text-center"><i
                                        class="fa fa-phone-square bigicon"></i></span>
                                <div class="col-md-8">
                                    <input id="phone" name="frmphone" type="text" placeholder="N° Teléfono"
                                        class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <span class="col-md-1 col-md-offset-2 text-center"><i
                                        class="fa fa-pencil-square-o bigicon"></i></span>
                                <div class="col-md-8">
                                    <textarea class="form-control" id="message" name="message" placeholder="Su Mensaje"
                                        rows="7"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="btn btn-primary btn-lg">ENVIAR</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="container-fluid titulo-seccion">
                    <h3 class="container-fluid titulo-seccion"><a class="lqs">PUBLICITÁ EN MUNDO
                            EMPRESAS</a></h3>
                    
                        <div class="container-fluid"><span class="fa fa-phone-square bigicon"><a style="font-family: 'Raleway';" style="padding-left: 15px !important;" > &nbsp353-5695054</a> </span></div>
                        <div class="container-fluid"><span class="fa fa-envelope-open bigicon"><a class="mail2 container-fluid" href="mailto:info@domain.com">publicidad@mundoempresas.com.ar</a></span></div>
                       <!------------
                        <p class="container-fluid correo-publi"><span class="fa fa-envelope-o container-fluid"><a class="mail2 container-fluid" href="mailto:info@domain.com">publicidad@mundoempresas.com.ar</a></span></p></div>
                        -------->
                    </div>
            </div>
        </div>
    </div>
        </form>



     <!--Footer-->

     <footer id="footer" class="footer-1" style="width: 100%;" runat="server">

    </footer>

    <!-- End Footer-->





    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
 <!--   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>