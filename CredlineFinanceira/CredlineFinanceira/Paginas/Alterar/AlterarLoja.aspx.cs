using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Persistencia;
using CredlineFinanceira.App_Code.Classes;
using System.Data;

namespace CredlineFinanceira.Paginas.Alterar
{
    public partial class AlterarLoja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LojaBD bd = new LojaBD();
                Loja loja = bd.Select(Convert.ToInt32(Session["ID"]));
                txtCnpj.Text = loja.CnpjLOJ;
                txtID.Text = loja.IdLOJ;
                txtEndereco.Text = loja.EnderecoLOJ;
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            LojaBD bd = new LojaBD();
            Loja loja = bd.Select(Convert.ToInt32(Session["ID"]));
            loja.CnpjLOJ = txtCnpj.Text;
            loja.IdLOJ = txtID.Text;
            loja.EnderecoLOJ = txtEndereco.Text;
            if (bd.Update(loja))
            {
                lblMensagem.Text = "Loja alterada com sucesso";
                txtID.Focus();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}