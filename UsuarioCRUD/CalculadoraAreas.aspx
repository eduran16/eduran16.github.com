﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculadoraAreas.aspx.cs" Inherits="UsuarioCRUD.CalculadoraAreas" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Calculadora de areas</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@1,300;1,400&display=swap" rel="stylesheet"/>
</head>
<body>
    <div class="container">
        <form runat="server">
            <h3>Calculadora de areas</h3>
            <asp:DropDownList ID="listArea"  type="button" runat="server">
                <asp:ListItem class="dropdown-item" value="" disabled selected hidden>Elija una opcion</asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Area del circulo" value="1"></asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Area del triangulo" value="2"></asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Area del rectangulo" value="3"></asp:ListItem>
                <asp:ListItem class="dropdown-item" Text="Area del cuadrado" value="4"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="lblRadio" Text="Radio:" runat="server" />
            <asp:Textbox ID="txtRadio" class="form-control" runat="server"/>
  
            <asp:Label ID="lblAltura" Text="Altura:" runat="server" />
            <asp:Textbox ID="txtAltura" class="form-control" runat="server"/>

            <asp:Label ID="lblBase" Text="Base:" runat="server" />
            <asp:Textbox ID="txtBase" class="form-control" runat="server"/>

            <asp:Label ID="lblLado" Text="Lados:" runat="server" />
            <asp:Textbox ID="txtLado" class="form-control" runat="server"/>

            <asp:Button ID="btnRegresar" style="margin-top: 20px;" class="btn btn-danger" Text="Volver" runat="server" OnClick="btnRegresar_Click" />
            <asp:Button ID="btnArea" style="margin-top: 20px;" class="btn btn-primary" Text="Calcular area" runat="server" OnClick="btnArea_Click" />
            <hr/>
            <asp:Label ID="lblConversion" runat="server" />
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>
        $('#listArea').change(function(){
                var val =$("#listArea :selected").val();
                if(val == '1'){
                    $('#lblLado').hide();
                    $('#txtLado').hide();
                    $('#lblRadio').show();
                    $('#txtRadio').show();
                    $('#lblBase').hide();
                    $('#txtBase').hide();
                    $('#lblAltura').hide();
                    $('#txtAltura').hide();
                } else if (val == '2'){
                    $('#lblLado').hide();
                    $('#txtLado').hide();
                    $('#lblRadio').hide();
                    $('#txtRadio').hide();
                    $('#lblBase').show();
                    $('#txtBase').show();
                    $('#lblAltura').show();
                    $('#txtAltura').show();
                } else if (val == '3'){
                    $('#lblLado').hide();
                    $('#txtLado').hide();
                    $('#lblRadio').hide();
                    $('#txtRadio').hide();
                    $('#lblBase').show();
                    $('#txtBase').show();
                    $('#lblAltura').show();
                    $('#txtAltura').show();
                } else if (val == '4') {
                    $('#lblLado').show();
                    $('#txtLado').show();
                    $('#lblRadio').hide();
                    $('#txtRadio').hide();
                    $('#lblBase').hide();
                    $('#txtBase').hide();
                    $('#lblAltura').hide();
                    $('#txtAltura').hide();
                }
            });
    </script>
</body>
</html>
