using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;


namespace CredlineFinanceira.Paginas
{
    public partial class CadastarLoja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Loja loja = new Loja();
            loja.CnpjLOJ = txtCnpj.Text;
            loja.IdLOJ = txtID.Text;
            loja.EnderecoLOJ = txtEndereco.Text;

            LojaBD bd = new LojaBD();
            if (bd.Insert(loja))
            {
                lblMensagem.Text = "Loja cadastrada com sucesso";

                txtCnpj.Text = "";
                txtID.Text = "";
                txtEndereco.Text = "";

                txtID.Focus();
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }



        }
    }
}