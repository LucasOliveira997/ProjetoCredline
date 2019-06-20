<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlterarVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.Alterar.AlterarVenda" %>

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
           
            <asp:Label ID="lblData" runat="server" Text="Data:" ></asp:Label>
            <br />
            <asp:TextBox ID="txtData" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <br />
             <asp:Label ID="lblCliente" runat="server" Text="Cpf do Cliente:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdCliente" runat="server"></asp:DropDownList>
            <br />
            <asp:Label ID="lblTipo" runat="server" Text="Tipo:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
            <br />
             <asp:Label ID="lblTaxa" runat="server" Text="Taxa:"></asp:Label>
            <br />
            <asp:CheckBoxList ID="cblTaxa" runat="server"></asp:CheckBoxList>
            <br />
            <asp:Label ID="lblValor" runat="server" Text="Valor:"></asp:Label>
            <br />
            <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblqntdParcela" runat="server" Text="Quantidade de Parcelas:"></asp:Label>
            <br />
            <asp:TextBox ID="txtqntdParcela" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblValorParcela" runat="server" Text="Valor das Parcelas:"></asp:Label>
            <br />
            <asp:TextBox ID="txtValorParcela" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
            <br />
            <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblUsuario" runat="server" Text="Funcionário:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdUsuario" runat="server"></asp:DropDownList>
            <br />
             <asp:Label ID="lblLoja" runat="server" Text="Loja:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdLoja" runat="server"></asp:DropDownList>
            <br />
            <asp:Label ID="lblId" runat="server" Text="Identificador:"></asp:Label>
            <br />
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
