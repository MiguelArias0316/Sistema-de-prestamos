<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MujerEmprendedora2.aspx.cs" Inherits="Sistema_de_prestamos.MujerEmprendedora2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    		background-image: url(https://media-public.canva.com/MADpRthaEnY/1/screen_3x.png);
    		background-size: 100vw 100vh;
    		background-attachment: fixed;
    		margin: 0;
    		font-family: Arial;
    	}
        form{
            border: black 8px inset;
    		width: 556px;
    		background-color: floralwhite;
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
    <form id="form1" runat="server" style="background-color: lightpink">
        <div class="nuevoEstilo3">
            <div style="width: 518px; background-color: lightpink;">
                <h1 style="color: #000000; background-color: lightpink; font-size: large; width: 488px;" background-color:lightpink" >
                    <meta charset="utf-8" /><b id="docs-internal-guid-b59d22aa-7fff-630e-ac20-1da2ea0381c1" style="font-weight:normal;"><span style="font-size: 15pt; font-family: Arial; color:black"; background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; white-space: pre-wrap;">Señora <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    , le informamos que&nbsp;su prestamo ha sido aprobado, pero con la condicion de que deberá acceder a unos cursos de capacitación. También tiene derecho a contactar con un asesor para inscribirse a la cámara de comercio con descuento especial.</span></b></h1>
                
                    <img src="https://static.wixstatic.com/media/1e9938_98e014085f94447aa954bff919fbced7.png/v1/fill/w_1000,h_649,al_c,usm_0.66_1.00_0.01/1e9938_98e014085f94447aa954bff919fbced7.png" style="border: 2px solid #000000; height: 256px; width: 488px" class="zoom"/>            
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
                <br />              
                &nbsp; INICIO<br />
                &nbsp;<asp:ImageButton ID="ImageButton1" src="https://images.vexels.com/media/users/3/157257/isolated/preview/d3bd73477873ff05a127e686ee688f65-black-and-white-house-icon-by-vexels.png" runat="server" Height="47px" Width="50px" OnClick="ImageButton1_Click" />
                </div>
            </div>      
    </form>
    <p>
        &nbsp;</p>  
</body>
</html>
