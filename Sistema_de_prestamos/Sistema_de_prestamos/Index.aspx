<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Sistema_de_prestamos.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <title></title>
    <style type="text/css">
        
        body{          
            width: 100%;
            height: 100vh;
            background: url(https://media-public.canva.com/DpVEg/MAEQDUDpVEg/1/s3.jpg) top center;
            background-size: cover;
            position: relative;
            padding: 0;
        }
        label {
            font-family: "Raleway", sans-serif;
}
        #form1{
            position: absolute;
            bottom: 0;
            top: 0;
            left: 0;
            right: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
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
        
        #LabelP{
            font-family: "Raleway", sans-serif;
            color:white;
        }
        #Button1:hover{
             background-color : #ff4a17;  
        }
         #Button1:hover{
             background-color : #ff4a17;  
        }
                   
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label ID="LabelP" runat="server" Text="SISTEMA DE PRESTAMOS
            " Font-Bold="True" Font-Names="Californian FB" Font-Size="XX-Large"></asp:Label>                  
    <br />
    <asp:Button ID="Button1" runat="server" Text="Ingresar" BorderColor="White" BackColor="Transparent" ForeColor="White" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Consultar" BorderColor="White" BackColor="Transparent" ForeColor="White" OnClick="Button2_Click" />
    </form>
    <form >
    </form>
    </body>
</html>
