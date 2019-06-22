﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastarLoja.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastarLoja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div>
        <a href="Login/Admin/Index.aspx">Home admin</a>
        <br />
        <a href="Login/Funcionario/Index.aspx">Home Funcionario</a>
        <br />
        <a href="Listar/ListarLoja.aspx">Lista de lojas</a>


    </div>
    <form id="FormularioLOJ" runat="server">
        <asp:Label ID="lblCadastro" runat="server" Text="Cadastro de Loja"></asp:Label>
        <br />
        <asp:Label ID="lblCnpj" runat="server" Text="Cnpj:"></asp:Label>
        <br />
        <asp:TextBox ID="txtCnpj" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblID" runat="server" Text="ID da Loja"></asp:Label>
        <br />
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
        <br />
        <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click"/>
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
