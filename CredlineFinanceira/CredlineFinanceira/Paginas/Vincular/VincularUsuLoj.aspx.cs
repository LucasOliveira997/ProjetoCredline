using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using FATEC;
using System.Data;

namespace CredlineFinanceira.Paginas.Vincular
{
    public partial class VincularUsuLoj : System.Web.UI.Page
    {
        private void Carrega()
        {
            //Carrega Loja
            LojaBD lojabd = new LojaBD();
            DataSet lojads = lojabd.SelectAll();
            //vincula produtos ao dropdownlist
            dpdLoja.DataSource = lojads.Tables[0].DefaultView;
            dpdLoja.DataTextField = "loj_id";
            dpdLoja.DataValueField = "loj_codigo";
            dpdLoja.DataBind();
            dpdLoja.Items.Insert(0, "Selecione");

            //Carrega Usuario
            UsuarioBD usuariobd = new UsuarioBD();
            DataSet usuariods = usuariobd.SelectAll();
            //Vincula fornecedores ao checkboxlist
            cblLogin.DataSource = usuariods.Tables[0].DefaultView;
            cblLogin.DataTextField = "usu_login";
            cblLogin.DataValueField = "usu_codigo";
            cblLogin.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Carrega();
            }
        }
        private bool hasLoja()
        {
            return (dpdLoja.SelectedItem.Text != "Selecione");
        }
        private bool hasUsuario()
        {
            for (int i = 0; i < cblLogin.Items.Count; i++)
            {
                if (cblLogin.Items[i].Selected)
                {
                    return true;
                }
            }
            return false;
        }        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (!hasLoja())
            {
                lblMensagem.Text = "Selecione uma loja";
                return;
            }
            if (!hasUsuario())
            {
                lblMensagem.Text = "Selecione um usuario";
                return;
            }

            int loja = Convert.ToInt32(dpdLoja.SelectedItem.Value);

            UsuarioBD bd = new UsuarioBD();
            for (int i = 0; i < cblLogin.Items.Count; i++)
            {
                if (cblLogin.Items[i].Selected)
                {
                    int usuario = Convert.ToInt32(cblLogin.Items[i].Value);
                    bd.Vincular(loja, usuario);
                }
            }
            lblMensagem.Text = "Usuario vinculado com sucesso";
            //limpar ddl e cbl
        }

    }
}