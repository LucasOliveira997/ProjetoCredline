using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CredlineFinanceira.Paginas
{
    public partial class Simular : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSimular_Click(object sender, EventArgs e)
        {
            decimal valor, taxa, resultado, qntd, parcela;
            
            valor = Convert.ToDecimal(txtValor.Text);
            taxa = Convert.ToDecimal(txtTaxa.Text);
            qntd = Convert.ToDecimal(txtParcela.Text);

            resultado = valor * (taxa + 1);

            parcela = resultado / qntd;

            txtTotal.Text = resultado.ToString();
            txtParcela1.Text = parcela.ToString();

        }
    }
}