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
        }
        private void Carrega()
        {
            EmprestimoBD bd = new EmprestimoBD();
            DataSet ds = bd.SelectAll();
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
        }
    }
}