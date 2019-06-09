using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;

namespace CredlineFinanceira.Paginas.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool IsPreenchido(string str)
        {
            bool retorno = false;
            if (str != string.Empty)
            {
                retorno = true;
            }
            return retorno;
        }
        private bool UsuarioEncontrado(Usuario usuario)
        {
            bool retorno = false;
            if (usuario != null)
            {
                retorno = true;
            }
            return retorno;
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string Login = txtLogin.Text.Trim();
            string Senha = txtSenha.Text.Trim();
            if (!IsPreenchido(Login))
            {
                lblMensagem.Text = "Preencha o login";
                txtLogin.Focus();
                return;
            }
            if (!IsPreenchido(Senha))
            {
                lblMensagem.Text = "Preencha a senha";
                txtSenha.Focus();
                return;
            }
            UsuarioBD bd = new UsuarioBD();
            Usuario usuario = new Usuario();
            usuario = bd.Autentica(Login, Senha);
            if (!UsuarioEncontrado(usuario))
            {
                lblMensagem.Text = "Login e/ou senha incorretos";
                txtLogin.Focus();
                return;
            }
            Session["ID"] = usuario.Codigo;
            switch (usuario.Cargo)
            {
                case true:
                    Response.Redirect("Admin/Index.aspx");
                    break;
                case false:
                    Response.Redirect("Funcionario/Index.aspx");
                    break;
                default:
                    break;
            }
        }
    }
}