<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarCliente.aspx.cs" Inherits="CredlineFinanceira.Paginas.CadastrarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.css"/>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Cadastrar Cliente</title>
    

    <style>
        html, body{
            
            height: 100%;
        }

        #menu{
            height: 100px;
            background-color: darkorange;
            font-family:Arial;
        }
       
       #GridView1{
           font-family:Arial;
           border: solid;
           border-color: black;
           
       }  
        
    </style>

    <script>
        document.addEventListener('DOMContentLoaded', function () {

            // Get all "navbar-burger" elements
            var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

            // Check if there are any navbar burgers
            if ($navbarBurgers.length > 0) {

                // Add a click event on each of them
                $navbarBurgers.forEach(function ($el) {
                    $el.addEventListener('click', function () {

                        // Get the target from the "data-target" attribute
                        var target = $el.dataset.target;
                        var $target = document.getElementById(target);

                        // Toggle the class on both the "navbar-burger" and the "navbar-menu"
                        $el.classList.toggle('is-active');
                        $target.classList.toggle('is-active');

                    });
                });
            }

        });
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div id="menu" class="col-sm-12">
                    
                        <br />
                        <nav id="H">                            
                        <nav class="navbar">
                            <div class="navbar-brand">
                                <a class="navbar-item" href="#">
                                    <h4>CREDLINE FINANCEIRA</h4>
                                </a>
                                <div class="navbar-burger burger" data-target="navbarExampleTransparentExample">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>

                            <div id="navbarExampleTransparentExample" class="navbar-menu">
                                <div class="navbar-start">
                                    <br /> <br />
                                    <a class="navbar-item" href="Login/Admin/Index.aspx">Home Admin</a>
                                    <a class="navbar-item" href="Login/Funcionario/Index.aspx">Home Funcionário</a>
                                    <div class="navbar-item has-dropdown is-hoverable">
                                        <a class="navbar-link" href="#">Cadastrar
                                        </a>
                                        <div class="navbar-dropdown is-boxed">
                                            <a class="navbar-item" href="CadastrarCliente.aspx">Cliente
                                            </a>
                                            <a class="navbar-item" href="CadastroVenda.aspx">Empréstimo
                                            </a>
                                            <a class="navbar-item" href="CadastrarUsuario.aspx">Usuário
                                            </a>
                                            <a class="navbar-item" href="CadastarLoja.aspx">Loja
                                            </a>
                                            <a class="navbar-item" href="CadastrarServico.aspx">Serviço
                                            </a>
                                            <a class="navbar-item" href="CadastrarTaxa.aspx">Taxa
                                            </a>
                                        </div>
                                    </div>

                                    <div class="navbar-item has-dropdown is-hoverable">
                                        <a class="navbar-link" href="#">Listar
                                        </a>
                                        <div class="navbar-dropdown is-boxed">
                                            <a class="navbar-item" href="Listar/ListarCliente.aspx">Cliente
                                            </a>
                                            <a class="navbar-item" href="Listar/ListarVenda.aspx">Empréstimo
                                            </a>
                                            <a class="navbar-item" href="Listar/ListarUsuario.aspx">Usuário
                                            </a>
                                            <a class="navbar-item" href="Listar/ListarLoja.aspx">Loja
                                            </a>
                                            
                                        </div>
                                    </div>
                                    <a class="navbar-item" href="Simular.aspx">Simular
                                    </a>
                                </div>

                                <div class="navbar-end">
                                    <div class="navbar-item">
                                        <div class="field is-grouped">
                                            <p class="control">
                                                <a class="button is-primary" href="Login/Login.aspx">
                                                    <span class="icon">
                                                        <i class="fa fa-download"></i>
                                                    </span>
                                                    <span>Sair</span>
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    
                        </nav>
                        <br />
                        
                    


                    <div class="row">
                            <div class="col-sm-12">
                                <br />
                                
                                <div class="form-group">
                                    
                                    <br />
                                <h2><asp:Label ID="Label1" runat="server" Text="Cadastro de Cliente"></asp:Label></h2>
                               
                                <br />
                                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                                    <br /> <br />
                                    <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblEndereco" runat="server" Text="Endereço:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblDataNasc" runat="server" Text="Data de Nascimento:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtDataNasc" runat="server" TextMode="DateTimeLocal" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="lblCpf" runat="server" Text="CPF:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtCpf" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblOcupacao" runat="server" Text="Ocupação:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtOcupacao" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblRenda" runat="server" Text="Renda:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRenda" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblRg" runat="server" Text="RG:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtRg" runat="server" CssClass="form-control"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" CssClass="btn btn-primary" />
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
