<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="CredlineFinanceira.Paginas.Listar.ListarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
     <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
   
   

    <style type="text/css">
        #form1 {
            margin-left: 100px;
            width: 844px;
            height: 252px;
            
        }
        
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                 <div class="col-sm">

                        <a href="../CadastrarCliente.aspx">Cadastrar cliente</a>
                        <br />
                        <a href="../Login/Funcionario/Index.aspx">Home</a>
                    </div>
                <div>
                    <br />
                    <asp:Label ID="lblDigite" runat="server" Text="Pesquisar Cliente:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
                    <br />
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    <br />
                </div>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                CommandArgument='<%# Bind("cli_codigo")%>'>Alterar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                CommandArgument='<%# Bind("cli_codigo")%>'>Excluir</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView>
                        <br />
                    </div>
                   
                </div>
            </div>
        
    </form>
</body>
</html>
