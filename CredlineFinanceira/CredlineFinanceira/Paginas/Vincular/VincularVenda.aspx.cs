using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;

namespace CredlineFinanceira.Paginas.Vincular
{
    public partial class VincularVenda : System.Web.UI.Page
    {

        private void Carrega()
        {
            //Carrega Cliente
            ClienteBD clientebd = new ClienteBD();
            DataSet clienteds = clientebd.SelectAll();
            //vincula usuario ao dropdownlist
            dpdCliente.DataSource = clienteds.Tables[0].DefaultView;
            dpdCliente.DataTextField = "cli_cpf";
            dpdCliente.DataValueField = "cli_codigo";
            dpdCliente.DataBind();
            dpdCliente.Items.Insert(0, "Selecione");

            //Carrega Taxa
            TaxaBD taxabd = new TaxaBD();
            DataSet taxads = taxabd.SelectAll();
            //Vincula taxas ao checkboxlist
            cblTaxa.DataSource = taxads.Tables[0].DefaultView;
            cblTaxa.DataTextField = "tax_taxaJuros";
            cblTaxa.DataValueField = "tax_codigo";
            cblTaxa.DataBind();


            //Carrega Usuario
            UsuarioBD usuariobd = new UsuarioBD();
            DataSet usuariods = usuariobd.SelectAll();
            //vincula usuario ao dropdownlist
            dpdUsuario.DataSource = usuariods.Tables[0].DefaultView;
            dpdUsuario.DataTextField = "usu_nome";
            dpdUsuario.DataValueField = "usu_codigo";
            dpdUsuario.DataBind();
            dpdUsuario.Items.Insert(0, "Selecione");

            //Carrega Loja
            LojaBD lojabd = new LojaBD();
            DataSet lojads = lojabd.SelectAll();
            //vincula loja ao dropdownlist
            dpdLoja.DataSource = lojads.Tables[0].DefaultView;
            dpdLoja.DataTextField = "loj_id";
            dpdLoja.DataValueField = "loj_codigo";
            dpdLoja.DataBind();
            dpdLoja.Items.Insert(0, "Selecione");

            //Carrega Venda
            EmprestimoBD emprestimobd = new EmprestimoBD();
            DataSet emprestimods = emprestimobd.SelectAll();
            //vincula emprestimo ao dropdownlist
            dpdEmprestimo.DataSource = emprestimods.Tables[0].DefaultView;
            dpdEmprestimo.DataTextField = "emp_id";
            dpdEmprestimo.DataValueField = "emp_codigo";
            dpdEmprestimo.DataBind();
            dpdEmprestimo.Items.Insert(0, "Selecione");
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Carrega();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            EmprestimoBD bd = new EmprestimoBD();
            for (int i = 0; i < dpdEmprestimo.Items.Count; i++)
            {
                if (dpdEmprestimo.SelectedItem.Selected)
                {
                    int idusuario = Convert.ToInt32(dpdUsuario.SelectedItem.Value);
                    int idloja = Convert.ToInt32(dpdLoja.SelectedItem.Value);
                    int idcliente = Convert.ToInt32(dpdCliente.SelectedItem.Value);
                    int idtaxa = Convert.ToInt32(cblTaxa.Items[i].Value);
                    int idemprestimo = Convert.ToInt32(dpdEmprestimo.SelectedItem.Value);

                    bd.Vincular(idloja, idusuario, idtaxa, idcliente, idemprestimo);
                }
            }
            lblMensagem.Text = "Usuario vinculado com sucesso";
        }
    }
}