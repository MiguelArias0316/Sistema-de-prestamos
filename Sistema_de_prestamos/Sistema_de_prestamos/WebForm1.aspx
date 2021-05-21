<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sistema_de_prestamos.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title></title>
    <style type="text/css">
        #form1 {         
            width: 497px;
    		padding: 10px 20px;
    		box-sizing: border-box;
    		margin-top: 20px;
    		border-radius: 20px;
            border: 2px solid white;          
            position:relative;
            top: 0px;
            left: 0px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        body:before {
              content: "";
              background: rgba(13, 20, 26, 0.7);
              position: absolute;
              bottom: 0;
              top: 0;
              left: 0;
              right: 0;
        }
        body{
            background-image: url('https://media-public.canva.com/MADQ5L5xI8c/1/screen_2x.jpg');
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 478px;
        }
        #LabelP{
            padding-left: 80px;
            font-size: xx-large;
            text-align: left;
        }
       
        #LabelN{

            padding-left: 1px;
        }
        #LabelE{
            padding-left: 1px;
        }
        #LabelG{
            padding-left: 1px;
        }               
        #LabelN0{

            padding-left: 1px;
        }
                
        #LabelN1{

            padding-left: 1px;
        }
        #BotonEnviar:hover:before{                              
            cursor: pointer;
        }
                        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label ID="LabelP" runat="server" Text="FORMULARIO DE REGISTRO
            " Font-Bold="True" Font-Names="Californian FB" Font-Size="X-Large" ForeColor="#E1E1E1" Font-Overline="False"  ></asp:Label>     
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelN" runat="server" Text="Nombre" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" ForeColor="#CC3300"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelN1" runat="server" Text="Email" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" ForeColor="#CC3300"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelN0" runat="server" Text="Documento" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" BorderColor="Black"></asp:TextBox>
        <asp:Label ID="Label9" runat="server" ForeColor="#CC3300"></asp:Label>
        <asp:Label ID="Label10" runat="server" ForeColor="#CC3300"></asp:Label>
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelE" runat="server" Text="Edad" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" BorderColor="Black"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" ForeColor="#CC3300"></asp:Label>
        <asp:Label ID="Label8" runat="server" ForeColor="#CC3300"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LabelG" runat="server" Text="Genero" Font-Bold="True" ForeColor="#3399FF"></asp:Label>     
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" ForeColor="#EEEEEE">
            <asp:ListItem>Masculino</asp:ListItem>
            <asp:ListItem>Femenino</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:Label ID="Label7" runat="server" ForeColor="#CC3300"></asp:Label>        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <br />    
        &nbsp;    
        <asp:Button ID="BotonEnviar" runat="server" OnClick="Button4_Click" Text="Enviar" Height="22px" Width="82px" BorderColor="Black" BorderWidth="3px" ForeColor="White" BackColor="Transparent" Font-Bold="False" Font-Size="Small" />       
    </form>
</body>
</html>
