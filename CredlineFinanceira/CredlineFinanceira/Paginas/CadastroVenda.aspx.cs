using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using CredlineFinanceira.Paginas;
using System.Data;

namespace CredlineFinanceira.Paginas
{
    public partial class CadastroVenda : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Emprestimo emprestimo = new Emprestimo();

            emprestimo.Taxa = Convert.ToInt32(txtTaxa.Text);
            emprestimo.Cliente = Convert.ToInt32(txtCliente.Text);
            emprestimo.CodigoLOJ = txtLoja.Text;
            emprestimo.DataEMP = Convert.ToDateTime(txtData.Text);
            emprestimo.ValorEMP = Convert.ToDouble(txtValor.Text);
            emprestimo.TipoEMP = txtTipo.Text;
            emprestimo.QntdParcela = Convert.ToInt32(dpdParcela.SelectedItem.Value);
            emprestimo.ValorParcela = Convert.ToDouble(txtValorParcela.Text);
            emprestimo.Status = txtStatus.Text;


            EmprestimoBD bd = new EmprestimoBD();
            if (bd.Insert(emprestimo))
            {
                lblMensagem.Text = "Emprestimo cadastrado com sucesso";

                txtData.Text = "";
                txtValor.Text = "";
                txtTipo.Text = "";
                txtTaxa.Text = "";
                txtCliente.Text = "";
                txtLoja.Text = "";
                dpdParcela.Text = "";
                txtValorParcela.Text = "";
                txtStatus.Text = "";
                txtTipo.Focus();

            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }
        }

    }
}