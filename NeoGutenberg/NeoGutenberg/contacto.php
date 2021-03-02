<?php
/**
 * @version 1.0
 */



require("class.phpmailer.php");
require("class.smtp.php");

// Valores enviados desde el formulario


$frmname = $_GET["frmname"];
$frmapellido = $_GET["frmapellido"];
$frmemail = $_GET["frmemail"];
$frmphone = $_GET["frmphone"];
$message = $_GET["message"];



// Datos de la cuenta de correo utilizada para enviar vía SMTP
$smtpHost = "w220394.ferozo.com";  // Dominio alternativo brindado en el email de alta 
$smtpUsuario = "info@mundoempresas.com.ar";  // Mi cuenta de correo
$smtpClave = "Hakuna479";  // Mi contraseña



// Email donde se enviaran los datos cargados en el formulario de contacto
$emailDestino = "info@mundoempresas.com.ar";



$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->Port = 465; 
$mail->SMTPSecure = 'ssl';
$mail->IsHTML(true); 
$mail->CharSet = "utf-8";



$mail->SMTPOptions = array(
    'ssl' => array(
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
    )
);


// VALORES A MODIFICAR //

$mail->Host = $smtpHost; 
$mail->Username = $smtpUsuario; 
$mail->Password = $smtpClave;

$mail->From = "info@mundoempresas.com.ar"; // Email desde donde envío el correo.
$mail->FromName = "info@mundoempresas.com.ar";
$mail->AddAddress("info@mundoempresas.com.ar"); // Esta es la dirección a donde enviamos los datos del formulario




$body = "";
$body .= "\r\n Nombre:".$frmname."<br/>";
$body .= "\r\n Apellido:".$frmapellido."<br/>";
$body .= "\r\n Email:".$frmemail."<br/>";
$body .= "\r\n Phone:".$frmphone."<br/>";
$body .= "\r\n Message:".$message."<br/>";

$str     = $body;
$order   = array("\r\n", "\n", "\r");
$replace = '<br />';
$body = str_replace($order, $replace, $str);



$mail->Subject = "Formulario de contacto"; // Este es el titulo del email.

$mensajeHtml = nl2br($body);
$mail->Body = $body; // Texto del email en formato HTML
$mail->AltBody = $body; // Texto sin formato HTML
// FIN - VALORES A MODIFICAR //

$estadoEnvio = $mail->Send(); 
if($estadoEnvio){
    echo "El correo fue enviado correctamente.";
} else {
    echo "Ocurrió un error inesperado.";
}

echo "<script>";
echo "window.location.href = \"https://mundoempresas.com.ar/Contacto.aspx\";";
echo "</script>";
