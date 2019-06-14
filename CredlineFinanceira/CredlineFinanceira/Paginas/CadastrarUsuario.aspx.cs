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
            Usuario cliente = new Usuario();
            cliente.Nome = txtNome.Text;
            cliente.Telefone = Convert.ToInt32(txtTelefone.Text);
            cliente.Celular = Convert.ToInt32(txtCelular.Text);
            cliente.Endereco = txtEndereco.Text;
            cliente.DataContrato = Convert.ToDateTime(txtDataContrato.Text);
            cliente.Cpf = Convert.ToInt32(txtCpf.Text);
            cliente.Login = txtLogin.Text;
            cliente.Senha = txtSenha.Text;
            cliente.Cargo = Convert.ToBoolean(dpdCargo.SelectedItem.Value);
            cliente.CodigoLOJ = Convert.ToInt32(dpdLoja.SelectedItem.Value);

            


            UsuarioBD bd = new UsuarioBD();
            if (bd.Insert(cliente))
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
                dpdLoja.Text = "";
                txtNome.Focus();
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }

        }

        
    }
}