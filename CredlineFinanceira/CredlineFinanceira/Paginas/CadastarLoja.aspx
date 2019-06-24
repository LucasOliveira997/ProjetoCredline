<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastarLoja.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastarLoja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title></title>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        #menu {
            height: 100px;
            background-color: darkorange;
            font-family: Arial;
        }

        h1 {
            color: white;
            text-align: center;
        }

        #GridView1 {
            font-family: Arial;
        }

        #H ul {
            padding: 0px;
            margin: 0px;
            background-color: #EDEDED;
            list-style: none;
            font-family: Arial;
        }

            #H ul li {
                display: inline;
            }

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
    </style>

</head>
<body>
    <form id="FormularioLOJ" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div id="menu">
                        <h1>
                        CREDLINE FINANCEIRA    
                        </h1>
                        <br />
                        <br />
                        <nav id="H">
                            <ul>
                                <li><a href="Login/Admin/Index.aspx">Home Admin</a></li>
                                <li><a href="Login/Funcionario/Index.aspx">Home Funcionário</a></li>
                                <li><a href="CadastrarCliente.aspx">Cadastrar Cliente</a></li>
                                <li><a href="CadastarLoja.aspx">Cadastrar Loja</a></li>
                                <li><a href="CadastrarUsuario.aspx">Cadastrar Usuario</a></li>
                                <li><a href="CadastroVenda.aspx">Cadastrar Venda</a></li>
                                <li><a href="CadastrarTaxa.aspx">Cadastrar Taxa</a></li>
                                <li><a href="CadastrarServico.aspx">Cadastrar Serviço</a></li>
                                <li><a href="Simular.aspx">Simular Empréstimo</a></li>
                                <li><a href="Listar/ListarCliente.aspx">Listar Cliente</a></li>
                                <li><a href="Listar/ListarLoja.aspx">Listar Loja</a></li>
                                <li><a href="Listar/ListarUsuario.aspx">Listar Usuário</a></li>
                                <li><a href="Listar/ListarVenda.aspx">Listar Venda</a></li> 
                                
                            </ul>
                        </nav>
                        <br />
                        <br />

                        <br />
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <h2><asp:Label ID="Label1" runat="server" Text="Cadastro de Loja"></asp:Label></h2>
                                <br />
                                <br />
                                <asp:Label ID="lblCnpj" runat="server" Text="Cnpj:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtCnpj" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblID" runat="server" Text="ID da Loja"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtID" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>

                            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-primary" />
                            <br />
                            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
