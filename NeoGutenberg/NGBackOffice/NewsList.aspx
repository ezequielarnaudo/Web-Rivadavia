<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="NGBackOffice.NewsList" %>
<%@ Import Namespace="NegocioGutenberg" %>

<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
    <title>NeoGutemberg</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>

<body>


    <form method="post" action="./NewsList.aspx" id="form1">
        <div class="aspNetHidden">
            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
                value="dpB1wrKPCZB43iPkOfHuWhbG2FzJ9h8IKOSPjOylXmAGED1ndkplIp4oNWJda3oUgC9rWUZJ5bwLZXm6TMKDZ08fWMgGF53aj3T+wSiOicQC0DGc/aa1GbXrAYvnemII" />
        </div>

        <div class="aspNetHidden">

            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="52E2DBCE" />
            <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
                value="WR5PgdHwuvXgLNFr52G4DU23QFp1pqvSpsLp26BcdthZC2Bx6L0s8oQbpEkAhIM2rqE1zFuwXExsf3dA8YJZ374a6aVQuEnvPsj4fShxttPc6FrOsSfpD2mQ/OgW9XTuY+qeVF1ngrNtfzmuwESr/5a+VnMualPVVQyJkNH5UzybGNdpj0myw1Ol9Pfe1egU" />
        </div>

        <div class="table-responsive">
            <table class="table table-bordered newsList table-hover">
                <thead>
                    <tr class="thead-dark">
                        <th class="titulos" scope="col">Id</th>
                        <th class="titulos" scope="col">Encabezado</th>
                        <th class="titulos" scope="col">Editor</th>
                        <th class="titulos" scope="col">Portada</th>
                        <th class="titulos" scope="col">Fecha de ultimo guardado</th>
                        <th class="titulos" scope="col">Fecha de publicación</th>
                        <th class="titulos" scope="col">Editar</th>
                    </tr>
                </thead>

                <tbody class="body-table">


                    <% List<Nota> ln = Nota.seleccionarNotas();
                        foreach (Nota n in ln)
                        { 
                    %>
                         <tr>
                             <td>
                                 <%:n.Id.ToString() %>
                             </td>ASD
                             <td>
                                 <%:n.Titulo %>
                             </td>
                             <td>
                                 <%:n.IdEditor.NombreEditor %>
                             </td>
                             <td>
                                 <%:n.Foto %>
                             </td>
                             <td>
                                 <%:n.FechaGuardado.ToString() %>

                             </td>
                             <td>
                                 <%:n.FechaPublicacion.ToString() %>
                             </td>

                            <td>
                                <a href="Editor.aspx<%: "?e="+n.Id.ToString() %>">Editar Nota</a>
                            </td>
                         </tr>
                        <%} %>




                </tbody>
            </table>
            <br>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <button class="btn btn-outline-secondary" name="btnNuevaNota" type="submit"
                        onclick="CheckIfNewsName();" id="btnNuevaNota">Nueva Nota</button>
                </div>
                <input name="txtNombreNota" id="txtNombreNota" type="text" class="form-control" placeholder=""
                    aria-label="" aria-describedby="basic-addon1">
            </div>

            <!-----<input type="submit" name="btnNuevaNota" value="Nueva Nota" onclick="CheckIfNewsName();"
                id="btnNuevaNota" />----->
            <!----  <input name="txtNombreNota" type="text" id="txtNombreNota" /> --->
        </div>

        <!------- <div>
            SQL EXECUTE:
            <textarea name="NeoExecute" rows="2" cols="20" id="NeoExecute">
        </textarea> <br /> <input type="submit" name="btnExec" value="" id="btnExec" /> </div>
        <div><span>RESULT:</span><span id="resultado"></span></div>--------->

    </form>













    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>