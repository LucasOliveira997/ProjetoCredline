<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarUsuario.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Select1 {
            width: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div> <asp:Label ID="lblCadastro" runat="server" Text="Cadastro de Usuário"></asp:Label>
            <br />
            <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
            <br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label>
            <br />
            <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
            <br />
            <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblDataContrato" runat="server" Text="Data de Contratação:"></asp:Label>
            <br />
            <asp:TextBox ID="txtDataContrato" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCpf" runat="server" Text="CPF:"></asp:Label>
            <br />
            <asp:TextBox ID="txtCpf" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblLogin" runat="server" Text="Login:"></asp:Label>
            <br />
            <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" UseSystemPasswordChar="true" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            
            <asp:DropDownList ID="dpdCargo" runat="server">
                <asp:ListItem Value="False">Funcionário</asp:ListItem>
                <asp:ListItem Value="True">Admin</asp:ListItem>
            </asp:DropDownList>

            <br /> <br />
            <asp:DropDownList ID="dpdLoja" runat="server">
                <asp:ListItem Value="1">Pinda</asp:ListItem>
            </asp:DropDownList>
            <br />                      
            <asp:Button ID="btnSalvar" runat="server" Text="Cadastrar" OnClick="btnSalvar_Click" />
            <br />                    
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
