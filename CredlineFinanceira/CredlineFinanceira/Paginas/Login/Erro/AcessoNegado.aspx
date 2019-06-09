<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcessoNegado.aspx.cs" Inherits="CredlineFinanceira.Paginas.Login.Erro.AcessoNegado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="ACESSO NEGADO"></asp:Label>
            <br /> <br />
            <asp:HyperLink ID="HyperLink1" runat="server"><a href="../Login.aspx">Voltar para a tela de login</a></asp:HyperLink>
        </div>
    </form>
</body>
</html>
