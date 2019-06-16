using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;

namespace CredlineFinanceira.Paginas.Login.Funcionario
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();

            int Codigo = Convert.ToInt32(Session["ID"]);
            UsuarioBD bd = new UsuarioBD();
            Usuario usuario = bd.Select(Codigo);
            if (!IsFuncionario(usuario.Cargo))
            {
                Response.Redirect("../Erro/AcessoNegado.aspx");
            }
            else
            {
                lblTitulo.Text = "Bem vindo (Funcionário) : " + usuario.Nome;
            }
        }
        private void Carrega()
        {
            ServicoBD bd = new ServicoBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }



        private bool IsFuncionario(bool Cargo)
        {
            bool retorno = false;
            if (Cargo == false)
            {
                retorno = true;
            }
            return retorno;
        }

        protected void lbSair_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            Response.Redirect("../Login.aspx");
        }
    }
}