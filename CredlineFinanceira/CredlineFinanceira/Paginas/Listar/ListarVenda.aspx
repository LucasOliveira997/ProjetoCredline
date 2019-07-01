<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.Listar.ListarVenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lista de Empréstimos</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.6.1/css/bulma.css" />
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = google.visualization.arrayToDataTable([
        ['TIPO', 'Média por tipo',],
        ['Consignado INSS', 15000],
        ['Pessoal', 5700]
      ]);

      var options = {
        title: 'Média de empréstimo por tipo',
        chartArea: {width: '50%'},
        hAxis: {
          title: 'MÉDIA',
          minValue: 0
        },
        vAxis: {
          title: 'TIPO'
        }
      };

      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }
    </script>

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
            <br />
                       <h2><asp:Label ID="Label1" runat="server" Text="Lista de Vendas"></asp:Label></h2>
                       <br /> <br />
            <asp:Label ID="lblDigite" runat="server" Text="Pesquisar Venda:"></asp:Label>
            <br />
            <asp:TextBox ID="txtPesquisa" CssClass="" runat="server"></asp:TextBox>
                       <div class="glyphicon">
                           <i class="glyphicon glyphicon-search form-control-feedback"></i>
                    <asp:Button ID="Button1" CssClass="btn btn-search" runat="server" Text="" OnClick="btnPesquisar_Click" />
                    </div>
            
            <br />
            <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
            <br />
                       <br />
        </div>
        <div>
            <div class="col-sm-12">
            <div id="gd" class="form-group">
            <asp:Label ID="lblTitulo" runat="server" Text="Lista de vendas"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="false"  CssClass="table table-stripped" GridLines="none">
                <Columns>
                    
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-danger" ID="lbDeletar" runat="server" CommandName="Deletar"
                                CommandArgument='<%# Bind("emp_codigo")%>'>Excluir</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="emp_data" HeaderText="Data"/>
                    <asp:BoundField DataField="emp_tipo" HeaderText="Tipo"/>
                    <asp:BoundField DataField="emp_valor" HeaderText="Valor(R$)"/>
                    <asp:BoundField DataField="emp_qntdParcela" HeaderText="Parcelas"/>
                    <asp:BoundField DataField="emp_valorParcela" HeaderText="Valor Parcela(R$)"/>
                    <asp:BoundField DataField="emp_status" HeaderText="Status"/>
                    <asp:BoundField DataField="emp_id" HeaderText="ID"/>
                    <asp:BoundField DataField="tax_taxaJuros" HeaderText="Taxa"/>
                    <asp:BoundField DataField="cli_cpf" HeaderText="CPF Cliente"/>
                    <asp:BoundField DataField="usu_nome" HeaderText="Funcionário"/>
                    <asp:BoundField DataField="loj_id" HeaderText="Loja"/>


                </Columns>
            </asp:GridView>
                </div>
                </div>
            <div class="form-group">
            <asp:Label ID="lblTitulo2" runat="server" Text="Valor médio por tipo"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" CssClass="gridview"></asp:GridView>
                 <div id="chart_div"></div>
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
                    </div>
                </div>
           
         </div>
    </form>
</body>
</html>
