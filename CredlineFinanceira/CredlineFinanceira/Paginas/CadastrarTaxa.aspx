<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarTaxa.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastrarTaxa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="CadastroTaxa" runat="server" Text="Cadastro de Taxas"></asp:Label>
            <br />
            <asp:Label ID="lblBanco" runat="server" Text="Nome do Banco:"></asp:Label>
            <br />
            <asp:TextBox ID="txtBanco" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblTipo" runat="server" Text="Tipo de empréstimo que se aplica:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
            <br />
            <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblJuros" runat="server" Text="Juros:"></asp:Label>
            <br />
            <asp:TextBox ID="txtJuros" runat="server"></asp:TextBox>
            <br />

            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
