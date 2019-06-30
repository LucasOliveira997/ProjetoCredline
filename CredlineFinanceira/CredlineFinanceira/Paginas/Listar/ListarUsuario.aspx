<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarUsuario.aspx.cs" Inherits="CredlineFinanceira.Paginas.Listar.ListarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.css"/>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <title>Lista de Usuários</title>
    <style>
        html, body{
            
            height: 100%;
        }

        #menu{
            height: 100px;
            background-color: darkorange;
            font-family:Arial;
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
                                    <a class="navbar-item" href="../Login/Admin/Index.aspx">Home Admin</a>
                                    <a class="navbar-item" href="../Login/Funcionario/Index.aspx">Home Funcionário</a>
                                    <div class="navbar-item has-dropdown is-hoverable">
                                        <a class="navbar-link" href="#">Cadastrar
                                        </a>
                                        <div class="navbar-dropdown is-boxed">
                                            <a class="navbar-item" href="../CadastrarCliente.aspx">Cliente
                                            </a>
                                            <a class="navbar-item" href="../CadastroVenda.aspx">Empréstimo
                                            </a>
                                            <a class="navbar-item" href="../CadastrarUsuario.aspx">Usuário
                                            </a>
                                            <a class="navbar-item" href="../CadastarLoja.aspx">Loja
                                            </a>
                                            <a class="navbar-item" href="../CadastrarServico.aspx">Serviço
                                            </a>
                                            <a class="navbar-item" href="../CadastrarTaxa.aspx">Taxa
                                            </a>
                                        </div>
                                    </div>

                                    <div class="navbar-item has-dropdown is-hoverable">
                                        <a class="navbar-link" href="#">Listar
                                        </a>
                                        <div class="navbar-dropdown is-boxed">
                                            <a class="navbar-item" href="ListarCliente.aspx">Cliente
                                            </a>
                                            <a class="navbar-item" href="ListarVenda.aspx">Empréstimo
                                            </a>
                                            <a class="navbar-item" href="ListarUsuario.aspx">Usuário
                                            </a>
                                            <a class="navbar-item" href="ListarLoja.aspx">Loja
                                            </a>
                                            
                                        </div>
                                    </div>
                                    <a class="navbar-item" href="../Simular.aspx">Simular
                                    </a>
                                </div>

                                <div class="navbar-end">
                                    <div class="navbar-item">
                                        <div class="field is-grouped">
                                            <p class="control">
                                                <a class="button is-primary" href="../Login/Login.aspx">
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
         <div id="corpo" class:"container-fluid">
               <div class="col-sm-12">
                   <div class="form-group">
                       <br />
        <div>
            <h2><asp:Label ID="Label1" runat="server" Text="Lista de Usuarios"></asp:Label></h2>
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false" CssClass="table table-striped">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbAlterar" runat="server" CssClass="btn btn-primary" CommandName="Alterar"
                                CommandArgument='<%# Bind("usu_codigo")%>'>Alterar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbDeletar" runat="server" CssClass="btn btn-danger" CommandName="Deletar"
                                CommandArgument='<%# Bind("usu_codigo")%>'>Excluir</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="usu_nome" HeaderText="Nome"/>
                    <asp:BoundField DataField="usu_telefone" HeaderText="Telefone"/>
                    <asp:BoundField DataField="usu_celular" HeaderText="Celular"/>
                    <asp:BoundField DataField="usu_endereco" HeaderText="Endereço"/>
                    <asp:BoundField DataField="usu_dataContrato" HeaderText="Contratação"/>
                    <asp:BoundField DataField="usu_cpf" HeaderText="CPF"/>
                    <asp:BoundField DataField="usu_login" HeaderText="Login"/>
                    <asp:BoundField DataField="usu_cargo" HeaderText="Cargo"/>
       
                </Columns>
            </asp:GridView>
        </div>
                          </div>
                       </div>
                   </div>
             </div>
                </div>
            </div>
       
    </form>
</body>
</html>
