<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VincularVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.Vincular.VincularVenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="Vincular venda"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblUsuario" runat="server" Text="Funcionario:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdUsuario" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblCliente" runat="server" Text="Cpf do cliente:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdCliente" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblLoja" runat="server" Text="Loja:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdLoja" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblEmprestimo" runat="server" Text="Identificador da Venda:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdEmprestimo" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblTaxa" runat="server" Text="Taxa:"></asp:Label>
            <br />
            <asp:CheckBoxList ID="cblTaxa" runat="server"></asp:CheckBoxList>        
            <br />
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click"/>
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
