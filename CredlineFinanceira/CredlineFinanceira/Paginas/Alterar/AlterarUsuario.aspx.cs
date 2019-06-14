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
    public partial class AlterarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                UsuarioBD bd = new UsuarioBD();
                Usuario usuario = bd.Select(Convert.ToInt32(Session["ID"]));
                txtNome.Text = usuario.Nome;
                txtTelefone.Text = usuario.Telefone.ToString();
                txtCelular.Text = usuario.Celular.ToString();
                txtEndereco.Text = usuario.Endereco;
                txtDataContrato.Text = usuario.DataContrato.ToLongDateString();
                txtCpf.Text = usuario.Cpf.ToString();
                txtLogin.Text = usuario.Login;
                txtSenha.Text = usuario.Senha.ToString();
                dpdCargo.Text = usuario.Cargo.ToString();
                dpdLoja.Text = usuario.CodigoLOJ.ToString();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            UsuarioBD bd = new UsuarioBD();
            Usuario usuario = bd.Select(Convert.ToInt32(Session["ID"]));
            usuario.Nome = txtNome.Text;
            usuario.Telefone = Convert.ToInt32(txtTelefone.Text);
            usuario.Celular = Convert.ToInt32(txtCelular.Text);
            usuario.Endereco = txtEndereco.Text;
            usuario.DataContrato = Convert.ToDateTime(txtDataContrato.Text);
            usuario.Cpf = Convert.ToInt32(txtCpf.Text);
            usuario.Login = txtLogin.Text;
            usuario.Senha = txtSenha.Text;
            usuario.Cargo = Convert.ToBoolean(dpdCargo.Text);
            usuario.CodigoLOJ = Convert.ToInt32(dpdLoja.Text);

            if (bd.Update(usuario))
            {
                lblMensagem.Text = "Funcionário alterado com sucesso";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Erro ao salvar.";
            }
        }
    }
}