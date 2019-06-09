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
    public partial class CadastrarTaxa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Taxa taxa = new Taxa();
            taxa.BancoTAX = Convert.ToInt32(txtBanco.Text);
            taxa.TipoTAX = txtTipo.Text;
            taxa.StatusTAX = txtStatus.Text;
            taxa.JurosTAX = txtJuros.Text;

            TaxaBD bd = new TaxaBD();
            if (bd.Insert(taxa))
            {
                lblMensagem.Text = "Taxa cadastrada com sucesso";

                txtBanco.Text = "";
                txtTipo.Text = "";
                txtStatus.Text = "";
                txtJuros.Text = "";

                txtBanco.Focus();
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente";
            }
        }
    }
}