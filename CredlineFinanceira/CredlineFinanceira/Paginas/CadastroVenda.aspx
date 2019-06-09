<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastroVenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <asp:Label ID="lblCadastroV" runat="server" Text="Cadastro de Vendas"></asp:Label>
            <br />
            <asp:Label ID="lblTaxa" runat="server" Text="Taxa:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTaxa" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblCliente" runat="server" Text="Cpf do Cliente"></asp:Label>
            <br />
            <asp:TextBox ID="txtCliente" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblLoja" runat="server" Text="ID da Loja:"></asp:Label>
            <br />
            <asp:TextBox ID="txtLoja" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblData" runat="server" Text="Data:" ></asp:Label>
            <br />
            <asp:TextBox ID="txtData" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <br />
            <asp:Label ID="lblValor" runat="server" Text="Valor:"></asp:Label>
            <br />
            <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblTipo" runat="server" Text="Tipo:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
            <br />
            
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>

            <br />
        </div>
    </form>
</body>
</html>
