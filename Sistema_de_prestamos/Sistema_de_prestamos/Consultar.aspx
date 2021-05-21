<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="Sistema_de_prestamos.Consultar" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <style>
        body{
            
            background-image: url(https://media-public.canva.com/pi81Y/MAEFefpi81Y/1/s.jpg);
            
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-attachment: fixed;                 
        }
        
        form{
            width: 528px;
    		padding: 10px 20px;
            background: rgba(0,0,0,0.4);
    		box-sizing: border-box;
            border: 2px solid white;           
    		margin-top: 20px;
    		border-radius: 20px;
            height: 148px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
            
        }
    h1{
        text-align:center;
    }
    Button:hover {
        background-color : #1C5E55;
        cursor: pointer;
    }
    #divcentrar {
        margin-left: auto;
        margin-right:auto;
        width: 446px;
        height: 56px;
       
    }
        </style>
<body> 
    <form id="form1" runat="server">
        <div>
            <div id="divcentrar">
        <asp:Label ID="Label1" runat="server" Text="Ingrese su documento:" ForeColor="#CCCCCC" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="False" BorderColor="Black"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button3" runat="server" Text="Consultar" BorderColor="black" BackColor="Transparent" ForeColor="White" OnClick="Button3_Click" BorderWidth="2px" Font-Bold="False" Height="25px" Width="85px"/>           
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                
            <asp:GridView ID="Datos1" runat="server" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="50px" style="margin-top: 0px" Width="450px" ForeColor="Black" >
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            </div>
        </div>                   
    </form>
</body>
</html>
