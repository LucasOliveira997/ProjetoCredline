using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;

namespace CredlineFinanceira.Paginas.Listar
{
    public partial class ListarCliente : System.Web.UI.Page
    {
        private void Carrega()
        {
            ClienteBD bd = new ClienteBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int Codigo = 0;
            switch (e.CommandName)
            {
                case "Alterar":
                    Codigo = Convert.ToInt32(e.CommandArgument);
                    Session["ID"] = Codigo;
                    Response.Redirect("../Alterar/AlterarCliente.aspx");

                    break;
                case "Deletar":
                    Codigo = Convert.ToInt32(e.CommandArgument);
                    ClienteBD bd = new ClienteBD();
                    bd.Delete(Codigo);
                    Carrega();
                    break;
                default:
                    break;
            }

        }
    }
}