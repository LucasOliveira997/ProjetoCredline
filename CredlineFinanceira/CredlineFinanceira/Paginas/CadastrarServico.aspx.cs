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
    public partial class CadastrarServico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        { 
            Servico servico = new Servico();
            servico.NomeSER = txtNome.Text;
            servico.TipoSER = txtTipo.Text;
          

            ServicoBD bd = new ServicoBD();
            if (bd.Insert(servico))
            {
                lblMensagem.Text = "Serviço cadastrado com sucesso";

                txtNome.Text = "";
                txtTipo.Text = "";
            

                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }

        }
    }
}