<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="CredlineFinanceira.Paginas.Login.Admin.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.css"/>
    <script src="../../../Scripts/bootstrap.min.js"></script>
    <script src="../../../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />

    
    
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
       footer{
           height: 100px;
            background-color: darkorange;
            font-family:Arial;
       }

       #GridView2{
           width: 20%;
           float: left;
           background-color: yellow;
       }

       #GridView3{
           width: 20%;
           float: left;
           background-color: lightgreen;
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

    <title></title>
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
                                    <a class="navbar-item" href="#">Home
                                    </a>
                                    <div class="navbar-item has-dropdown is-hoverable">
                                        <a class="navbar-link" href="#">Cadastrar
                                        </a>
                                        <div class="navbar-dropdown is-boxed">
                                            <a class="navbar-item" href="../../CadastrarCliente.aspx">Cliente
                                            </a>
                                            <a class="navbar-item" href="../../CadastroVenda.aspx">Empréstimo
                                            </a>
                                            <a class="navbar-item" href="../../CadastrarUsuario.aspx">Usuário
                                            </a>
                                            <a class="navbar-item" href="../../CadastarLoja.aspx">Loja
                                            </a>
                                            <a class="navbar-item" href="../../CadastrarServico.aspx">Serviço
                                            </a>
                                            <a class="navbar-item" href="../../CadastrarTaxa.aspx">Taxa
                                            </a>
                                        </div>
                                    </div>

                                    <div class="navbar-item has-dropdown is-hoverable">
                                        <a class="navbar-link" href="#">Listar
                                        </a>
                                        <div class="navbar-dropdown is-boxed">
                                            <a class="navbar-item" href="../../Listar/ListarCliente.aspx">Cliente
                                            </a>
                                            <a class="navbar-item" href="../../Listar/ListarVenda.aspx">Empréstimo
                                            </a>
                                            <a class="navbar-item" href="../../Listar/ListarUsuario.aspx">Usuário
                                            </a>
                                            <a class="navbar-item" href="../../Listar/ListarLoja.aspx">Loja
                                            </a>
                                            
                                        </div>
                                    </div>
                                    <a class="navbar-item" href="../../Simular.aspx">Simular
                                    </a>
                                </div>

                                <div class="navbar-end">
                                    <div class="navbar-item">
                                        <div class="field is-grouped">
                                            <p class="control">
                                                <a class="button is-primary" href="../Login.aspx">
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
            <div class:"container-fluid">
               <div class="col-sm-12">
                   <div class="form-group">
                       
                       <h2 style="font-family: Arial"><asp:Label ID="lblTitulo" runat="server" Text="Home"></asp:Label></h2>
                       <br />
                       <h3 style="font-family:Arial"><asp:Label runat="server" Text="Serviços:"></asp:Label></h3>
               <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" Width="30%" AutoGenerateColumns="false" runat="server">
                   <Columns>
                       <asp:BoundField DataField="ser_nome" HeaderText="Ocupação"/>
                        <asp:BoundField DataField="ser_tipo" HeaderText="Tipo"/>
                   </Columns>

               </asp:GridView>
                       
                       <br />
                       <br />
                       </div>
                   <h3>Contatos x Contratos fechados</h3>
                   <div class="form-group">
                       
                       <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped"></asp:GridView>
                       
                
                   

                       <asp:GridView ID="GridView3" runat="server" CssClass="table table-striped"></asp:GridView>
                   </div>
               </div>
                

            </div>
                    </div>                  
                </div>
                </div>
          
   
        </form>
    
</body>
</html>