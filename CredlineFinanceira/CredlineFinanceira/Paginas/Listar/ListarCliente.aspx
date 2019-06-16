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
                    <div class="col-xl-12">
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                        <br />
                    </div>
                   
                </div>
            </div>
        
    </form>
</body>
</html>
