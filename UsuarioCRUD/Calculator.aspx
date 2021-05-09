<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="UsuarioCRUD.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@1,300;1,400&display=swap" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <form runat="server">
            <h3>Calculadora de areas</h3>
            <asp:DropDownList ID="listArea" type="button" runat="server">
                <asp:ListItem class="dropdown-item" value="" disabled selected hidden>Elija una opcion</asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Suma" value="1"></asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Resta" value="2"></asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Multiplicacion" value="3"></asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Division" value="4"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="lblNum1" Text="#1:" runat="server" />
            <asp:Textbox ID="txtNum1" class="form-control" runat="server"/>
  
            <asp:Label ID="lblNum2" Text="#2:" runat="server" />
            <asp:Textbox ID="txtNum2" class="form-control" runat="server"/>

            <asp:Button ID="btnRegresar" style="margin-top: 20px;" class="btn btn-danger" Text="Volver" runat="server" OnClick="btnRegresar_Click" />
            <asp:Button ID="btnCalcular" style="margin-top: 20px;" class="btn btn-primary" Text="Calcular" runat="server" OnClick="btnCalcular_Click" />
            <hr/>
            <asp:Label ID="lblResultado" runat="server" />
        </form>
    </div>
</body>
</html>
