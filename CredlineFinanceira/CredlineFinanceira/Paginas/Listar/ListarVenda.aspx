﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarVenda.aspx.cs" Inherits="CredlineFinanceira.Paginas.Listar.ListarVenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitulo" runat="server" Text="Lista de vendas"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
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
            <br />
            <asp:Label ID="lblTitulo2" runat="server" Text="Valor médio por tipo"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server"></asp:GridView>
             <br />
            <asp:Label ID="lblTitulo3" runat="server" Text="Valor Total por mês"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
