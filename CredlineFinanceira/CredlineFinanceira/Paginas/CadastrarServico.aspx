<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarServico.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastrarServico" %>

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
        <a href=""></a>
    </div>
     <form id="FormularioSER" runat="server">
        <asp:Label ID="lblCadastro" runat="server" Text="Cadastro de Serviços"></asp:Label>
        <br />
        <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
        <br />
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblTipo" runat="server" Text="Tipo de empréstimo:"></asp:Label>
        <br />
        <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
        <br />
       
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click"/>
        <br />
        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
