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

        private void Carrega()
        {

            //Carrega Taxa
            TaxaBD taxabd = new TaxaBD();
            DataSet taxads = taxabd.SelectAll();
            //Vincula taxas ao checkboxlist
            cblTaxa.DataSource = taxads.Tables[0].DefaultView;
            cblTaxa.DataTextField = "tax_taxaJuros";
            cblTaxa.DataValueField = "tax_codigo";
            cblTaxa.DataBind();

            //Carrega Cliente
            ClienteBD clientebd = new ClienteBD();
            DataSet clienteds = clientebd.SelectAll();
            //vincula usuario ao dropdownlist
            dpdCliente.DataSource = clienteds.Tables[0].DefaultView;
            dpdCliente.DataTextField = "cli_cpf";
            dpdCliente.DataValueField = "cli_codigo";
            dpdCliente.DataBind();
            dpdCliente.Items.Insert(0, new ListItem("Selecione", "0"));

            //Carrega Loja
            LojaBD lojabd = new LojaBD();
            DataSet lojads = lojabd.SelectAll();
            //vincula loja ao dropdownlist
            dpdLoja.DataSource = lojads.Tables[0].DefaultView;
            dpdLoja.DataTextField = "loj_id";
            dpdLoja.DataValueField = "loj_codigo";
            dpdLoja.DataBind();
            dpdLoja.Items.Insert(0, "Selecione");

            //Carrega Usuario
            UsuarioBD usuariobd = new UsuarioBD();
            DataSet usuariods = usuariobd.SelectAll();
            //vincula usuario ao dropdownlist
            dpdUsuario.DataSource = usuariods.Tables[0].DefaultView;
            dpdUsuario.DataTextField = "usu_nome";
            dpdUsuario.DataValueField = "usu_codigo";
            dpdUsuario.DataBind();
            dpdUsuario.Items.Insert(0, "Selecione");

            //Carrega Venda
            EmprestimoBD emprestimobd = new EmprestimoBD();
            DataSet emprestimods = emprestimobd.SelectAll();
            //vincula emprestimo ao dropdownlist
            dpdEmprestimo.DataSource = emprestimods.Tables[0].DefaultView;
            dpdEmprestimo.DataTextField = "emp_id";
            dpdEmprestimo.DataValueField = "emp_codigo";
            dpdEmprestimo.DataBind();
            dpdEmprestimo.Items.Insert(0, new ListItem("Selecione", ""));

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Carrega();
            }
        }
        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Emprestimo emprestimo = new Emprestimo();

            emprestimo.DataEMP = Convert.ToDateTime(txtData.Text);
            emprestimo.TipoEMP = txtTipo.Text;
            emprestimo.ValorEMP = Convert.ToDouble(txtValor.Text);
            emprestimo.QntdParcela = Convert.ToInt32(txtqntdParcela.Text);
            emprestimo.ValorParcela = Convert.ToDouble(txtValorParcela.Text);
            emprestimo.Status = txtStatus.Text;
            emprestimo.Id = txtId.Text;



            EmprestimoBD bd = new EmprestimoBD();
            if (bd.Insert(emprestimo))
            {
                lblMensagem.Text = "Emprestimo cadastrado com sucesso";

                txtData.Text = "";
                txtValor.Text = "";
                txtTipo.Text = "";
                txtqntdParcela.Text = "";
                txtValorParcela.Text = "";
                txtStatus.Text = "";
                txtId.Text = "";
                txtTipo.Focus();

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }
            else
            {
                lblMensagem.Text = "Ops, algo deu errado, tente novamente.";
            }
        }
        protected void btnVincular_Click(object sender, EventArgs e)
        {
            string ul = "<ul>";
            int cliente = 0;
            int loja = 0;
            int usuario = 0;
            int emprestimo = 0;

            if (String.IsNullOrEmpty(dpdCliente.SelectedValue))
            {
                ul += "<li>Escolha o cliente</li>";
            }
            else
                cliente = Convert.ToInt32(dpdCliente.SelectedItem.Value);

            if (String.IsNullOrEmpty(dpdLoja.SelectedValue))
            {
                ul += "<li>Escolha a loja</li>";
            }
            else
                loja = Convert.ToInt32(dpdLoja.SelectedItem.Value);

            if (String.IsNullOrEmpty(dpdUsuario.SelectedValue))
            {
                ul += "<li>Escolha o usuário</li>";
            }
            else
                usuario = Convert.ToInt32(dpdUsuario.SelectedItem.Value);

            if (String.IsNullOrEmpty(dpdEmprestimo.SelectedValue))
            {
                ul += "<li>Escolha o empréstimo</li>";
            }
            else
                emprestimo = Convert.ToInt32(dpdEmprestimo.SelectedItem.Value);


            ul += "</ul>";

            if (ul == "<ul></ul>")
            {
                EmprestimoBD bd = new EmprestimoBD();
                for (int i = 0; i < cblTaxa.Items.Count; i++)
                {
                    if (cblTaxa.Items[i].Selected)
                    {
                        bd.Vincular(Convert.ToInt32(cblTaxa.Items[i].Value), cliente, loja, usuario, emprestimo);
                    }
                }
                lblMensagem1.Text = "Venda vinculada com sucesso";
            }
            else
            {
                lblMensagem.Text = ul;
            }
        }

    }
}