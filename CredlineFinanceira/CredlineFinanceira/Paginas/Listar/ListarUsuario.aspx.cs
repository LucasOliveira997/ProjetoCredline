using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;

namespace CredlineFinanceira.Paginas.Listar
{
    public partial class ListarUsuario : System.Web.UI.Page
    {
        private void Carrega()
        {
            UsuarioBD bd = new UsuarioBD();
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
            int codigo = 0;
            switch (e.CommandName)
            {
                case "Alterar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    Session["ID"] = codigo;
                    Response.Redirect("../Alterar/AlterarUsuario.aspx");
                    break;
                case "Deletar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    UsuarioBD bd = new UsuarioBD();
                    bd.Delete(codigo);
                    Carrega();
                    break;
                default:
                    break;
            }

        }
    }
}