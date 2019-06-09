﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;

namespace CredlineFinanceira.Paginas.Login.Admin
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        
    }
}