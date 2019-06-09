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
    public partial class CadastrarUsuario : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.Nome = txtNome.Text;
            usuario.Telefone = Convert.ToInt32(txtTelefone.Text);
            usuario.Celular = Convert.ToInt32(txtCelular.Text);
            usuario.Endereco = txtEndereco.Text;
            usuario.DataContrato = Convert.ToDateTime(txtDataContrato.Text);
            usuario.Cpf = Convert.ToInt32(txtCpf.Text);
            usuario.Login = txtLogin.Text;
            usuario.Senha = txtSenha.Text;
            usuario.Cargo = Convert.ToBoolean(dpdCargo.SelectedItem.Value);
            usuario.IdLoja = txtIdLoja.Text;

            


            UsuarioBD bd = new UsuarioBD();
            if (bd.Insert(usuario))
            {
                lblMensagem.Text = "Usuario cadastrado com sucesso";

                txtNome.Text = "";
                txtTelefone.Text = "";
                txtCelular.Text = "";
                txtEndereco.Text = "";
                txtDataContrato.Text = "";
                txtCpf.Text = "";
                txtLogin.Text = "";
                txtSenha.Text = "";
                dpdCargo.Text = "";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }

        }

    }
}