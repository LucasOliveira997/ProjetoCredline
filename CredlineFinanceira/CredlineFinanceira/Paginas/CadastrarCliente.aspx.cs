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
    public partial class CadastrarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Cliente cliente = new Cliente();
            cliente.NomeCLI = txtNome.Text;
            cliente.TelefoneCLI = Convert.ToInt32(txtTelefone.Text);
            cliente.CelularCLI = Convert.ToInt32(txtCelular.Text);
            cliente.EnderecoCLI = txtEndereco.Text;
            cliente.NascimentoCLI = Convert.ToDateTime(txtDataNasc.Text);
            cliente.CpfCLI = Convert.ToInt32(txtCpf.Text);
            cliente.OcupacaoCLI = txtOcupacao.Text;
            cliente.RendaCLI = Convert.ToDouble(txtRenda.Text);
            cliente.RgCLI = Convert.ToInt32(txtRg.Text);

            ClienteBD bd = new ClienteBD();
            if (bd.Insert(cliente))
            {
                lblMensagem.Text = "Cliente cadastrado com sucesso";

                txtNome.Text = "";
                txtTelefone.Text = "";
                txtCelular.Text = "";
                txtEndereco.Text = "";
                txtDataNasc.Text = "";
                txtCpf.Text = "";
                txtOcupacao.Text = "";
                txtRenda.Text = "";
                txtRg.Text = "";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }

        }

    }
}