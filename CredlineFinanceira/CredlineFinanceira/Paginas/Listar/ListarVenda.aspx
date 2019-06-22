<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.Listar.ListarVenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        #menu{
            height: 100px;
            background-color: darkorange;
            font-family:Arial;
        }
       #GridView1{
           font-family:Arial;
       }
        #GridView2{
           font-family:Arial;
       }
         #GridView3{
           font-family:Arial;
       }
       #H ul {
            padding: 0px;
            margin: 0px;
            background-color: #EDEDED;
            list-style: none;
            font-family:Arial;
       }
       #H ul li { display: inline; }

        #H ul li a {
            padding: 2px 10px;
            display: inline-block;
            /* visual do link */
            background-color: #EDEDED;
            color: #333;
            text-decoration: none;
            border-bottom: 3px solid #EDEDED;
        }
        #H ul li a:hover {
            background-color: #D6D6D6;
            color: #6D6D6D;
            border-bottom: 3px solid #EA0000;
        }
        #corpo{
            font-family:Arial;
        }
    </style>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div id="menu" class="col-sm-12">
                     <h1><asp:Label ID="Label1" runat="server" Text="Lista de Vendas"></asp:Label></h1>
                    <br />
                    <br />
                    <nav id="H">
                        <ul>
                            <li><a href="../CadastrarCliente.aspx">Cadastrar Cliente</a></li>
                            <li><a href="../CadastarLoja.aspx">Cadastrar Loja</a></li>
                            <li><a href="../CadastrarUsuario.aspx">Cadastrar Usuario</a></li>
                            <li><a href="../CadastroVenda.aspx">Cadastrar Venda</a></li>
                            <li><a href="../CadastrarTaxa.aspx">Cadastrar Taxa</a></li>
                            <li><a href="../CadastrarServico.aspx">Cadastrar Serviço</a></li>
                        </ul>
                    </nav>
                  </div>                  
                </div>
                </div>
            <br />
         <div id="corpo" class:"container-fluid">
               <div class="col-sm-12">
                   <div class="form-group">
                       <br />
            <br />
            <asp:Label ID="lblDigite" runat="server" Text="Pesquisar Venda:"></asp:Label>
            <br />
            <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
            <br />
                       <br />
        </div>
        <div>
            <div class="form-group">
            <asp:Label ID="lblTitulo" runat="server" Text="Lista de vendas"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" CssClass="gridview">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                CommandArgument='<%# Bind("emp_codigo")%>'>Alterar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                CommandArgument='<%# Bind("emp_codigo")%>'>Excluir</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                </div>
            <br />
            <br />
            <div class="form-group">
            <asp:Label ID="lblTitulo2" runat="server" Text="Valor médio por tipo"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" CssClass="gridview"></asp:GridView>
                <br />
                <br />
            </div>
            <div class="form-group">
                <asp:Label ID="lblTitulo3" runat="server" Text="Valor Total por mês"></asp:Label>
                <br />
                <asp:GridView ID="GridView3" runat="server" CssClass="gridview"></asp:GridView>
            </div>
        </div>
               </div>

         </div>
    </form>
</body>
</html>
