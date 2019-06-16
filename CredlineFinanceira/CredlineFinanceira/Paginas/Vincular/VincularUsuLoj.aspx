<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VincularUsuLoj.aspx.cs" Inherits="CredlineFinanceira.Paginas.Vincular.VincularUsuLoj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="Vincular usuário e loja"></asp:Label>
            <br />
            <asp:Label ID="lblLogin" runat="server" Text="Login:"></asp:Label>
            <br />
            <asp:CheckBoxList ID="cblLogin" runat="server"></asp:CheckBoxList>
            <br />
            <asp:Label ID="lblLoja" runat="server" Text="Loja:"></asp:Label>
            <br />
            <asp:DropDownList ID="dpdLoja" runat="server"></asp:DropDownList>
            <br />
            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click"/>
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
