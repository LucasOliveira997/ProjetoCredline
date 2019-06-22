<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CredlineFinanceira.Paginas.Login.Admin.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="Tela principal do Admin"></asp:Label>
            <br />
             <div>>
                <a href="../../CadastrarCliente.aspx">Cadastrar Cliente</a>
                <a href="../../CadastarLoja.aspx">Cadastrar Loja</a>
                <a href="../../CadastrarUsuario.aspx">Cadastrar Usuario</a>    
                <a href="../../CadastroVenda.aspx">Cadastrar Venda</a>
                 <a href="../../CadastrarTaxa.aspx">Cadastrar Taxa</a>
                 <a href="../../CadastrarServico.aspx">Cadastrar Serviço</a>

            </div>
            <br />
            <asp:LinkButton ID="lbSair" runat="server" OnClick="lbSair_Click">Sair</asp:LinkButton>
        </div>
        <br />
        <div class:"container">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
