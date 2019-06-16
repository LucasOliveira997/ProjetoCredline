<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CredlineFinanceira.Paginas.Login.Funcionario.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="Tela principal do Funcionario"></asp:Label>
            <br />
            <div>>
                <a href="../../CadastrarCliente.aspx">Cadastrar Cliente</a>
            </div>
            <br />
            <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
        </div>
        <br />
        <div class="container">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
    </form>
</body>
</html>
