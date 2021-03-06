﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CredlineFinanceira.App_Code.Persistencia;

namespace CredlineFinanceira.Paginas.Listar
{
    public partial class ListarLoja : System.Web.UI.Page
    {
        private void Carrega()
        {
            LojaBD bd = new LojaBD();
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
                    Response.Redirect("../Alterar/AlterarLoja.aspx");
                    break;
                case "Deletar":
                    codigo = Convert.ToInt32(e.CommandArgument);
                    LojaBD bd = new LojaBD();
                    bd.Delete(codigo);
                    Carrega();
                    break;
                default:
                    break;
            }

        }
}
    }