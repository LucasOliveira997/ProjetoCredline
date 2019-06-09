using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;

namespace CredlineFinanceira.Paginas.Alterar
{
    public partial class AlterarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ClienteBD bd = new ClienteBD();
                Cliente cliente = bd.Select(Convert.ToInt32(Session["ID"]));
                txtNome.Text = cliente.NomeCLI;
                txtTelefone.Text = cliente.TelefoneCLI.ToString();
                txtCelular.Text = cliente.CelularCLI.ToString();
                txtEndereco.Text = cliente.EnderecoCLI;
                txtDataNasc.Text = cliente.NascimentoCLI.ToLongDateString();
                txtCpf.Text = cliente.CpfCLI.ToString();
                txtOcupacao.Text = cliente.OcupacaoCLI;
                txtRenda.Text = cliente.RendaCLI.ToString();
                txtRg.Text = cliente.RgCLI.ToString();
                               
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            ClienteBD bd = new ClienteBD();
            Cliente cliente = bd.Select(Convert.ToInt32(Session["ID"]));
            cliente.NomeCLI = txtNome.Text;
            cliente.TelefoneCLI = Convert.ToInt32(txtTelefone.Text);
            cliente.CelularCLI = Convert.ToInt32(txtCelular.Text);
            cliente.EnderecoCLI = txtEndereco.Text;
            cliente.NascimentoCLI = Convert.ToDateTime(txtDataNasc.Text);
            cliente.CpfCLI = Convert.ToInt32(txtCpf.Text);
            cliente.OcupacaoCLI = txtOcupacao.Text;
            cliente.RendaCLI = Convert.ToDouble(txtRenda.Text);
            cliente.RgCLI = Convert.ToInt32(txtRg.Text);
            if (bd.Update(cliente))
            {
                lblMensagem.Text = "Cliente alterado com sucesso";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}