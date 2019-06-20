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
            Carrega();
            Carrega2();
            Carrega3();
        }
        private void Carrega()
        {
            EmprestimoBD bd = new EmprestimoBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();


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
    }
}