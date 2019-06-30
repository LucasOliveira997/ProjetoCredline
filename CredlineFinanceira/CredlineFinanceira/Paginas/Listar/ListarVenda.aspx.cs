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
    public partial class ListarVenda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregaGrid("");
                Carrega2();
                Carrega3();
            }
        }
        private void CarregaGrid(string termo)
        {
            EmprestimoBD bd = new EmprestimoBD();

            DataSet ds;
            if (termo != "")
                ds = bd.Search(termo);
            else
                ds = bd.SelectVenda();

            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();

            int registros = ds.Tables[0].Rows.Count;
            if (registros == 0)
                lblMensagem.Text = "Nenhuma informação encontrada";
            else
                lblMensagem.Text = "Foram encontrados: " + registros + " resultado(s)";
        }
        private void Carrega2()
        {
            EmprestimoBD bd = new EmprestimoBD();
            DataSet ds = bd.SelectMedia();
            GridView2.DataSource = ds.Tables[0].DefaultView;
            GridView2.DataBind();
        }
        private void Carrega3()
        {
            EmprestimoBD bd = new EmprestimoBD();
            DataSet ds = bd.SelectTotal();
            GridView3.DataSource = ds.Tables[0].DefaultView;
            GridView3.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int codigo = 0;
            switch (e.CommandName)
            {
                case "Alterar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    Session["ID"] = codigo;
                    Response.Redirect("../Alterar/AlterarVenda.aspx");
                    break;
                case "Deletar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    EmprestimoBD bd = new EmprestimoBD();
                    bd.Delete(codigo);
                    CarregaGrid("");
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
                CarregaGrid(termo);
            }
            else
            {
                CarregaGrid("");
                txtPesquisa.Focus();
            }
        }



    }
   
}

    
