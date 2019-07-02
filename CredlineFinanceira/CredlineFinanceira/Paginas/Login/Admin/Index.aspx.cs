using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;

namespace CredlineFinanceira.Paginas.Login.Admin
{
    public partial class Index : System.Web.UI.Page
    {

        

        protected void Page_Load(object sender, EventArgs e)
        {

            Carrega();
            Carrega2();
            Carrega3();

            int Codigo = Convert.ToInt32(Session["ID"]);
            UsuarioBD bd = new UsuarioBD();
            Usuario usuario = bd.Select(Codigo);
            if (!IsAdmin(usuario.Cargo))
            {
                Response.Redirect("../Erro/AcessoNegado.aspx");
            }
            else
            {
                lblTitulo.Text = "Bem vindo (Administrador) : " + usuario.Nome;
            }




        }

        private void Carrega2()
        {
            ClienteBD bd = new ClienteBD();
            DataSet ds = bd.SelectContato();
            GridView2.DataSource = ds.Tables[0].DefaultView;
            GridView2.DataBind();
        }

        private void Carrega3()
        {
            ClienteBD bd = new ClienteBD();
            DataSet ds = bd.SelectContrato();
            GridView3.DataSource = ds.Tables[0].DefaultView;
            GridView3.DataBind();
        }

        private bool IsAdmin(bool Cargo)
        {
            bool retorno = false;
            if (Cargo == true)
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
        private void Carrega()
        {
            ServicoBD bd = new ServicoBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }

    }
}