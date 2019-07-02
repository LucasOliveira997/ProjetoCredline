using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;
using System.Web.Services;
using System.Web.Script.Services;

namespace CredlineFinanceira.Paginas.Listar
{
    public partial class ListarCliente : System.Web.UI.Page
    {
        private void Carrega(string termo)
        {
            ClienteBD bd = new ClienteBD();

            DataSet ds;
            if (termo != "")
                ds = bd.Search(termo);
            else
                ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega("");
            Carrega2();
        }


        private void Carrega2()
        {
            ClienteBD bd = new ClienteBD();
            DataSet ds = bd.SelectFaixa();
            GridView2.DataSource = ds.Tables[0].DefaultView;
            GridView2.DataBind();
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
                    Carrega("");
                    break;
                default:
                    break;
            }

        }
      
        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            string termo = txtPesquisa.Text.Trim();
            if (termo != string.Empty)
            {
                Carrega(termo);
            }
            else
            {
                Carrega("");
                txtPesquisa.Focus();
            }
        }
    }
}