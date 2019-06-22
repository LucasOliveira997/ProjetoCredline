<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastroVenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                            <div class="form-group">
                                <br />
                               <h5> <a href="Listar/ListarVenda.aspx">Lista de Vendas</a></h5>
                                <br />
                                <asp:Label ID="lblData" runat="server" Text="Data:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtData" runat="server" TextMode="DateTimeLocal" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblTipo" runat="server" Text="Tipo:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtTipo" runat="server"  CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblValor" runat="server" Text="Valor:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtValor" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblqntdParcela" runat="server" Text="Quantidade de Parcelas:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtqntdParcela" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblValorParcela" runat="server" Text="Valor das Parcelas:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtValorParcela" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblId" runat="server" Text="Identificador:"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-primary" />
                                <br />
                                <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                                <br />
                              
                            </div>
                           <h4> <asp:Label ID="lblTitulo2" runat="server" Text="Vincular:"></asp:Label> </h4>
                            <br />
                            <div class="form-group">
                                <asp:Label ID="lblTaxa" runat="server" Text="Taxa:"></asp:Label>
                                <br />
                                <asp:CheckBoxList ID="cblTaxa" runat="server" CssClass="checkbox-inline"></asp:CheckBoxList>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblCliente" runat="server" Text="Cpf do Cliente:"></asp:Label>
                                <br />
                                <asp:DropDownList ID="dpdCliente" runat="server" CssClass="form-control"></asp:DropDownList>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblLoja" runat="server" Text="Loja:"></asp:Label>
                                <br />
                                <asp:DropDownList ID="dpdLoja" runat="server" CssClass="form-control"></asp:DropDownList>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblUsuario" runat="server" Text="Funcionário:"></asp:Label>
                                <br />
                                <asp:DropDownList ID="dpdUsuario" runat="server" CssClass="form-control"></asp:DropDownList>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblEmprestimo" runat="server" Text="Identificador da Venda:"></asp:Label>
                                <br />
                                <asp:DropDownList ID="dpdEmprestimo" runat="server" CssClass="form-control"></asp:DropDownList>
                                <br />
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnVincular" runat="server" Text="Confirmar" OnClick="btnVincular_Click" CssClass="btn btn-primary" />
                                <br />
                                <asp:Label ID="lblMensagem1" runat="server" Text=""></asp:Label>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
