<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MujerEmprendedora.aspx.cs" Inherits="Sistema_de_prestamos.MujerEmprendedora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#SI").click(function () {  
                $("#divAcep").hide();
                $("#divNew").show();
            });
            $("#NO").click(function () {
                $("#divNew").hide();
                $("#divAcep").show();
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
    		width: 565px;
    		background-color: lightpink;
    		padding: 10px 20px;
    		box-sizing: border-box;
    		margin-top: 20px;
    		border-radius: 20px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;       
            height: 628px;
        }
        .auto-style1 {
            color: #003399;
        }
        .nuevoEstilo1 {
            font-family: "Courier New", Courier, "espacio sencillo";
        }
        .nuevoEstilo2 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
        }
        .nuevoEstilo3 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            height: 370px;
            width: 518px;
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
        .auto-style5 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            background-color: #FFFFFF;
        }
        .nuevoEstilo7 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            border-style: double;
        }
        .auto-style6 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            text-align: justify;
            height: 71px;
        }
        .auto-style7 {
            background-color: #FFFFFF;
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
            <div style="width: 506px">
                <p style="color: #000000; background-color: lightpink; font-size: large;">Señora <asp:Label ID="Label1" runat="server" ForeColor="Black" BackColor="LightPink"></asp:Label>,&nbsp;su prestamo ha sido aceptado. Usted tiene la posibilidad de aumentar el valor de su prestamo, si y solo si, accede a unas capacitaciones de emprendimiento que duran un mes.</p>
                
                    <img src="https://cdn2.actitudfem.com/media/files/styles/big_img/public/images/2014/12/notamujer_0.jpg" style="border: 2px solid #000000; height: 256px; width: 488px"/>            
                <br />              
                </div>
            </div>
            <div runat="server" class="auto-style6">
            <strong class="nuevoEstilo6"><span class="auto-style5" style="border-color: #000000; background-color: lightpink; color: #000000">¿Desea usted aumentar el valor del prestamo?</span>               
            </strong>
            <br />
            <input type="radio" name="opciones2" value="SI" id="SI"/> Si 
            <br />
            <input type="radio" name="opciones2" value="NO" id="NO"/> No
            <br /> 
            <br />
        </div>
        <div id="divAcep"  style="display: none">
             &nbsp; INICIO<br />
            <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" src="https://images.vexels.com/media/users/3/157257/isolated/preview/d3bd73477873ff05a127e686ee688f65-black-and-white-house-icon-by-vexels.png" Height="47px" Width="50px" />
            
        </div>
        <div id="divNew" runat="server" style="display: none">
            <span class="nuevoEstilo6">
            <strong><span class="auto-style7" style="border-color: #000000; background-color: lightpink; color: #000000">Eliga cuanto desea aumentar: </span></strong></span><br class="auto-style1" />
            <br class="auto-style1" />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" ForeColor="Black">
                <asp:ListItem>1000000</asp:ListItem>
                <asp:ListItem>2000000</asp:ListItem>
                <asp:ListItem>3000000</asp:ListItem>
                <asp:ListItem>4000000</asp:ListItem>
                <asp:ListItem>5000000</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br class="auto-style1" />
            <br class="auto-style1" />
            
            <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" CssClass="auto-style1" BackColor="#CCCCFF" BorderColor="Black" Height="24px" Width="119px" Font-Bold="True" ForeColor="Black" /> 
       </div>         
    </form>
    <p>
        &nbsp;</p>
    
</body>
</html>
