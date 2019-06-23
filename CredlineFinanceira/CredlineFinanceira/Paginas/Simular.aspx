<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Simular.aspx.cs" Inherits="CredlineFinanceira.Paginas.Simular" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style>
        #form1{
             font-family: Arial;
        }

        #menu {
            height: 100px;
            background-color: darkorange;
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
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div id="menu">

                        <h1>
                            <asp:Label ID="Label1" runat="server" Text="Cadastro de Venda"></asp:Label></h1>
                        <br />
                        <br />
                        <nav id="H">
                            <ul>
                                <li><a href="CadastrarCliente.aspx">Cadastrar Cliente</a></li>
                                <li><a href="CadastarLoja.aspx">Cadastrar Loja</a></li>
                                <li><a href="CadastrarUsuario.aspx">Cadastrar Usuario</a></li>
                                <li><a href="CadastroVenda.aspx">Cadastrar Venda</a></li>
                                <li><a href="CadastrarTaxa.aspx">Cadastrar Taxa</a></li>
                                <li><a href="CadastrarServico.aspx">Cadastrar Serviço</a></li>
                                <li><a href="Listar/ListarVenda.aspx">Listar Venda</a></li>


                            </ul>
                        </nav>
                        <br />
                        <br />

                        <br />
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <br />
                            <br />

                            <h4>
                                <asp:Label ID="lblSimular" runat="server" Text="Simular empréstimo"></asp:Label>
                            </h4>
                            <br />
                            <br />
                            <div class="form-group">
                                <asp:Label ID="lblValor" runat="server" Text="Valor Desejado:"></asp:Label>
                                <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                                <br />
                            </div>
                            
                                 <div class="form-group">
                                     <asp:Label ID="lblTaxa" runat="server" Text="Taxa empregada:"></asp:Label>
                                     <asp:TextBox ID="txtTaxa" runat="server"></asp:TextBox>
                                     <br />
                                 </div>
                            <div class="form-group">
                                <asp:Label ID="lblParcela" runat="server" Text="Qntd. Parcelas:"></asp:Label>
                                <asp:TextBox ID="txtParcela" runat="server"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnSimular" runat="server" Text="Simular" OnClick="btnSimular_Click" CssClass="btn btn-primary" />
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblTotal" runat="server" Text="Valor a prazo:"></asp:Label>
                                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblParcela1" runat="server" Text="Valor das parcelas:"></asp:Label>
                                <asp:TextBox ID="txtParcela1" runat="server"></asp:TextBox>
                            </div>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
