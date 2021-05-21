﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrestamoRechazado.aspx.cs" Inherits="Sistema_de_prestamos.PrestamoRechazado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script>
$(document).ready(function(){
    $('.zoom').hover(function() {
        $(this).addClass('transition');
    }, function() {
        $(this).removeClass('transition');
    });
});
    </script>
    <style>
        body{
    		background-image: url(https://media-public.canva.com/MADQ5EpDru0/1/screen.jpg);
    		background-size: 100vw 100vh;
    		background-attachment: fixed;
    		margin: 0;
    		font-family: Arial;
    	}
        form{
            border: black 8px inset;
    		width: 596px;
    		background-color: white;
    		padding: 10px 20px;
    		box-sizing: border-box;
    		margin-top: 20px;
    		border-radius: 20px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            
            height: 551px;
        }
        img.zoom {
            
    width: 350px;
    height: 200px;
    -webkit-transition: all .2s ease-in-out;
    -moz-transition: all .2s ease-in-out;
    -o-transition: all .2s ease-in-out;
    -ms-transition: all .2s ease-in-out;
}
        	

 
.transition {
    -webkit-transform: scale(1.8); 
    -moz-transform: scale(1.8);
    -o-transform: scale(1.8);
    transform: scale(1.8);
}
        .nuevoEstilo1 {
            font-family: "Courier New", Courier, "espacio sencillo";
        }
        .nuevoEstilo2 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .nuevoEstilo3 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            height: 535px;
            width: 494px;
            margin-left: 0px;
        }
        .nuevoEstilo4 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .nuevoEstilo5 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .nuevoEstilo6 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
           
        }
        .nuevoEstilo7 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            border-style: double;
        }
        .nuevoEstilo8 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            border-color: #00FFFF;
        }
        #divcentro{

        }
        #Button1{
            align-items:center;
        }
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nuevoEstilo3">
            <div style="width: 518px">
                <p style="color: #000000; background-color: white; font-size: large; font-weight: 700; text-align: justify;">Señor@ <asp:Label ID="Label1" runat="server" ForeColor="Black" BackColor="white"></asp:Label>, luego de un meticuloso análisis a su solicitud de credito, nos vemos en la obligación de informarle que lamentablemente no podemos aprobarlo en estos momentos. A su cuenta de correo se enviará mas informacion al respecto.</p>
                <img src="https://tutasa.com.ar/wp-content/uploads/2017/02/no-otorgan-pr%C3%A9stamos-1080x675.jpg" style="border: 2px solid #000000; height: 256px; width: 488px" class="zoom"/>
           
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
                <br />              
                &nbsp;&nbsp;&nbsp; INICIO<br />
                &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" src="https://images.vexels.com/media/users/3/157257/isolated/preview/d3bd73477873ff05a127e686ee688f65-black-and-white-house-icon-by-vexels.png" runat="server" Height="47px" Width="50px" OnClick="ImageButton1_Click" />
                </div>
            </div>
        
    </form>
    <p>
        &nbsp;</p>
    
</body>
</html>
