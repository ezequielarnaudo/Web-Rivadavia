<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="NGBackOffice.Editor" %>
<%@ Import Namespace="NegocioGutenberg" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script>
		$(function () {

		




			$("#datepicker").datepicker({ dateFormat: 'dd/mm/yy' });
			$.ajax({
                url: "<%=hostapi%>/Image/GetImages",
				method: "GET",
				contentType: false,
				processData: false,
				dataType: 'jsonp',
				headers: { 'Access-Control-Allow-Origin': '*' },
				crossDomain: true,
				success: function (result) {

					if (result.length > 0) {
						for (a = 0; a < result.length; a++) {
							$("#imageGallery").append("<li><img width=\"100px\" height=\"100px\" onclick=\"Clipboard(this)\" src=\"" + result[a].fullurl + "\"></li>");
						}
					}

				}
			});
		});
		

    </script>

</head>
	
<body>



	<% Nota nota = Session["nota"] as Nota; %>
    <form id="form1" runat="server">


		
	 <div class="container-fluid">
      <div class="row">
          <div class="col-md-12">
              <div class="row">
                  <div class="col-md-6 fondo1">

					  <div><span>Editor:</span>
			<select id="cmbAutores">
				<% Nota nota = Session["nota"] as Nota; %>
				<%
                    List<Editor> editores = Editor.seleccionarEditores();
                    string templateControl = "<option [selected] value=\"[idEditor]\">[nombreEditor]</option>";
                    if (editores.Count > 0)
                    {
                        foreach (Editor e in editores)
                        {
                            if (e.Id == nota.IdEditor.Id)
                            {
                                Response.Write(templateControl.Replace("[idEditor]", e.Id.ToString()).Replace("[nombreEditor]", e.NombreEditor).Replace("[selected]", "selected=\"selected\""));

                            }
                            else 
							{
								Response.Write(templateControl.Replace("[idEditor]", e.Id.ToString()).Replace("[nombreEditor]", e.NombreEditor).Replace("[selected]", ""));
							}

                        }
                    }
					%>
			</select>
		</div>
					  <br />
					  <div>
			<span>TAG:<select id="tag">
				
				<%
                    List<Tag> tags = Tag.seleccionarTags();
                    string templateTag = "<option [selected] value=\"[idTag]\">[nombreTag]</option>";
                    if (tags.Count > 0)
                    {
                        foreach (Tag T in tags)
                        {

                            if (T.Id == nota.IdTag.Id)
                            {
                                Response.Write(templateTag.Replace("[idTag]", T.Id.ToString()).Replace("[nombreTag]", T.Nombre).Replace("[selected]", "selected=\"selected\""));

                            }
                            else
                            {
                                Response.Write(templateTag.Replace("[idTag]", T.Id.ToString()).Replace("[nombreTag]", T.Nombre).Replace("[selected]", ""));
                            }

                        }
                    }
					%>
			          </select></span>

		</div>
					  <br />
					  <div>
		
		<span>Fecha Publicacion</span><input type="text" id="datepicker"  value="<%=nota.FechaPublicacion.ToString("dd/MM/yyyy")%>" /><input type="time" id="timepicker"  value="<%=nota.FechaPublicacion.ToString("HH:mm") %>"/>
		</div><br />
		<br /><div> <span>Subir Portada (jpg, jpeg, png):</span> <input type="file" id="filePortada" name="filePortada" /><input type="button" value="Subir Imagen" onclick="SubirPortada()" /></div>
		<br /><div> <span>Subir Video (YOUTUBE) URL:</span> <input type="text" id="video"/></div>
		<br /><div><span>PORTADA:</span><img style="width:50%" src="<%=nota.Foto%>"  id="imgportada" /></div>
		<br /><div> <span>Epigrafe Portada:<input type="text" style="width:100%" id="volportada"  value="<%=nota.DescripcionFoto%>" /></span></div>
        <br /><div><span>Copete/Descripcion del video:</span><input type="text" style="width:100%" value="<%=nota.Subtitulo %>" id="txtSubtitulo"/></div>
		<br /><div><input type="button" id="btnGuardarTop" value="Guardar" onclick="GuardarNota()" /></div>

                  </div>
                  <div class="col-md-6 fondo2">
					  <div id="ctrlEditor" runat="server" class="editor">
        </div>
					  
            <input type="button" id="btnGuardarBottom" value="Guardar" onclick="GuardarNota()" />
                  </div>
              </div>
              <div class="row">
                  <div class="col-md-6 fondo3"><div id="GalleryContainer">
		<ul id="imageGallery">
		</ul>
			</div>
                  </div>
                  <div class="col-md-6 fondo4">4
                  </div>
              </div>
          </div>
      </div>
  </div>


		
		
		<br />
		<br />
		
		
		
		
		

	<asp:HiddenField  runat="server" id="hIdNota" ClientIDMode="Static"/>
	<asp:HiddenField runat="server" ID="hidTag" ClientIDMode="Static" />
	<asp:HiddenField runat="server" ID="hidAutor" ClientIDMode="Static" />
	<asp:HiddenField runat="server" ID="hfechaPublicacion" ClientIDMode="Static" />
	<asp:HiddenField runat="server" ID="hhoraPublicacion" ClientIDMode="Static" />
	<asp:HiddenField runat="server" ID="hfotoPortada" ClientIDMode="Static" />
	<asp:HiddenField runat="server" ID="hvolantaPortada" ClientIDMode="Static" />


    </form>
	<input type="file" id="file" name="file" />
	<input type="button" value="Subir Imagen" onclick="SubirImagen()" />
	<input type="text" id="clipboard" style="width:0%; height:0%" />
	

	
<script>
	function GuardarNota()
	{

		var idNota = "<idNota>" + $("#hIdNota").val() + "</idNota>";
		var fechaPublicacion = "<fechap>" + $("#datepicker").val() + "</fechap>";
        var horaPublicacion = "<timep>" + $("#timepicker").val() + "</timep>";
        var imgportada = "<imgpor>" + ($("#imgportada").attr("src") != "" ? $("#imgportada").attr("src"):$("#video").val()) + "</imgpor>";
		var volportada = "<volpor>" + $("#volportada").val() + "</volpor>";
		var subtitulo = "<subt>" + $("#txtSubtitulo").val() + "</subt>";
		var tag = "<tag>" + $("#tag").children("option:selected").val() + "</tag>";
		var autor = "<autor>" + $("#cmbAutores").children("option:selected").val() + "</autor>";

        
		var Content = idNota+ fechaPublicacion + horaPublicacion + imgportada + volportada + subtitulo +tag + autor + editor.getData();
            $.ajax({
				url: "<%=hostapi%>/nota/SaveNote",
				method: "POST",
                dataType: "json",
                headers: { 'Access-Control-Allow-Origin': '*' },
                crossDomain: true,
				data: Content,
				success: function (result) {
					$("#div1").html(result);
					alert("Noticia Guardada");
                }
            });
        
	}

	function Clipboard(ctrl)
	{
		$("#clipboard").val($(ctrl).attr("src"));
        $("#clipboard").focus();
		$("#clipboard").select();
		document.execCommand("copy");
		
		alert("imagen copiada al portapapeles...");


	}

	function SubirImagen() {
		var fd = new FormData();
		var files = $('#file')[0].files;
		if (files.length > 0)
		{
			for (a = 0; a < files.length; a++) { 
				fd.append('file', files[a]);
            }
		}
        $.ajax({
            url: "<%=hostapi%>/Image/Post",
            method: "POST",
			contentType: false,
			processData: false,
			dataType: 'json',
            headers: { 'Access-Control-Allow-Origin': '*' },
            crossDomain: true,
            data: fd,
            success: function (result) {
				alert("Imagenes Subida:" + result);
				if (result.length > 0) {
					for (a = 0; a < result.length; a++) {
                        $("#imageGallery").append("<li><img onclick=\"Clipboard(this)\" width=\"100px\" height=\"100px\" src=\"" + result[a].url + "\"></li>");
                    }
                }
            }
        });

	}

    function SubirPortada() {
        var fd = new FormData();
        var files = $('#filePortada')[0].files;
        if (files.length > 0) {
            for (a = 0; a < files.length; a++) {
                fd.append('file', files[a]);
            }
        }
        $.ajax({
            url: "<%=hostapi%>/Image/PostPortada",
            method: "POST",
            contentType: false,
            processData: false,
            dataType: 'json',
            headers: { 'Access-Control-Allow-Origin': '*' },
            crossDomain: true,
            data: fd,
            success: function (result) {
                alert("Imagenes Subida:" + result);
                if (result.length > 0) {
                    for (a = 0; a < result.length; a++) {
                        $("#imgportada").attr("src",result[a].url);
                    }
                }
            }
        });

    }
</script>
<script src="/ckeditor.js"></script>
<script>ClassicEditor
			.create( document.querySelector( '.editor' ), {
				toolbar: {
					items: [
						'heading',
						'|',
						'bold',
						'italic',
						'link',
						'bulletedList',
						'numberedList',
						'|',
						'indent',
						'outdent',
						'|',
						'imageInsert',
						'blockQuote',
						'insertTable',
						'mediaEmbed',
						'undo',
						'redo',
						'code',
						//'codeBlock',
						'fontBackgroundColor',
						'fontColor',
						'fontSize',
						'fontFamily',
						'highlight',
						'horizontalLine',
						//'htmlEmbed',
						'specialCharacters',
						'todoList',
						'underline'
						//'CKFinder'
					]
				},
				language: 'en',
				image: {
					toolbar: [
						'imageTextAlternative',
						'imageStyle:full',
						'imageStyle:side',
						'linkImage'
					]
				},
				table: {
					contentToolbar: [
						'tableColumn',
						'tableRow',
						'mergeTableCells',
						'tableCellProperties',
						'tableProperties'
					]
				},
				licenseKey: '',
			} )
			.then( editor => {
				window.editor = editor;
			} )
			.catch( error => {
				console.error( 'Oops, something went wrong!' );
				console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
				console.warn( 'Build id: ttqore1ezvlq-72khykaekj0i' );
				console.error( error );
			} );
	</script>
	<style>
	    #GalleryContainer {
	        width: 100%;
	        border: 1px solid #000;
	        margin: 1em 0;
	    }

  ul {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    width: 100%;
    padding-left: 0;
  }

  li {
    list-style: none;
    display: inline-block;
    width: calc(100% / 5);
    height: 120px;
    text-align: center;
  }
}

	</style>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>
</html>
