<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterarCliente.aspx.cs" Inherits="CredlineFinanceira.Paginas.Alterar.AlterarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblCadastro" runat="server" Text="Cadastro de Clientes"></asp:Label>
            <br />
            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
            <br />
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblDataNasc" runat="server" Text="Data de Nascimento:"></asp:Label>
            <br />
            <asp:TextBox ID="txtDataNasc" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <br />
            <asp:Label ID="lblCpf" runat="server" Text="CPF:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblOcupacao" runat="server" Text="Ocupação:"></asp:Label>

            <br />
            <asp:TextBox ID="txtOcupacao" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblRenda" runat="server" Text="Renda:"></asp:Label>
            <br />
            <asp:TextBox ID="txtRenda" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblRg" runat="server" Text="RG:"></asp:Label>
            <br />
            <asp:TextBox ID="txtRg" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
            <br /> <br />
            <a href="../Listar/ListarCliente.aspx">Lista de clientes</a>
        </div>

        

    </form>
</body>
</html>
