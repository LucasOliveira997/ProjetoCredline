<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="CredlineFinanceira.Paginas.Listar.ListarCliente" %>

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

        h1{
            color: white;
            text-align: center;
        }

       #GridView1{
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
    <form id="form2" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div id="menu" class="col-sm-12">
                     <h1>CREDLINE FINANCEIRA</h1>
                    <br />
                    <br />
                    <nav id="H">
                        <ul>
                            <li><a href="../Login/Admin/Index.aspx">Home Admin</a></li>
                            <li><a href="../Login/Funcionario/Index.aspx">Home Funcionário</a></li>
                            <li><a href="../CadastrarCliente.aspx">Cadastrar Cliente</a></li>
                            <li><a href="../CadastarLoja.aspx">Cadastrar Loja</a></li>
                            <li><a href="../CadastrarUsuario.aspx">Cadastrar Usuario</a></li>
                            <li><a href="../CadastroVenda.aspx">Cadastrar Venda</a></li>
                            <li><a href="../CadastrarTaxa.aspx">Cadastrar Taxa</a></li>
                            <li><a href="../CadastrarServico.aspx">Cadastrar Serviço</a></li>
                            <li><a href="ListarCliente.aspx">Listar Cliente</a></li>
                            <li><a href="ListarLoja.aspx">Listar Loja</a></li>
                            <li><a href="ListarUsuario.aspx">Listar Usuário</a></li>
                            <li><a href="ListarVenda.aspx">Listar Venda</a></li>
                            
                        </ul>
                    </nav>
                  </div>                  
                </div>
                
            <br />
         <div id="corpo" class:"container-fluid">
               <div class="col-sm-12">
                   <div class="form-group">
                       <br />
                       <h2><asp:Label ID="Label1" runat="server" Text="Lista de Clientes"></asp:Label></h2>
                    <br />
                    <asp:Label ID="lblDigite" runat="server" Text="Pesquisar Cliente:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
                    <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />
                    <br />
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    <br />
                </div>
                         <div class="form-group">
                        <asp:GridView ID="GridView1" CssClass="form-control" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand"  >
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
                        <asp:BoundField DataField="cli_nome" HeaderText="Nome"/>
                    <asp:BoundField DataField="cli_telefone" HeaderText="Telefone"/>
                    <asp:BoundField DataField="cli_celular" HeaderText="Celular"/>
                    <asp:BoundField DataField="cli_endereco" HeaderText="Endereço"/>
                    <asp:BoundField DataField="cli_dataNascimento" HeaderText="Contratação"/>
                    <asp:BoundField DataField="cli_cpf" HeaderText="CPF"/>
                    <asp:BoundField DataField="cli_ocupacao" HeaderText="Ocupação"/>
                    <asp:BoundField DataField="cli_renda" HeaderText="renda"/>
                    <asp:BoundField DataField="cli_rg" HeaderText="RG"/>

                </Columns>
                </asp:GridView>
                             
                        <br />
                    </div>
                   
                </div>
            </div>
        </div>
    </form>
</body>
</html>
