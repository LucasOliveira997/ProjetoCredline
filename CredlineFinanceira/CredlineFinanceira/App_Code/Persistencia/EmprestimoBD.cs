using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using CredlineFinanceira.App_Code.Classes;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class EmprestimoBD
    {
        //métodos
        //insert
        public bool Insert(Emprestimo emprestimo)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO emp_emprestimo ( emp_data, emp_tipo, emp_valor, emp_qntdParcela, emp_valorParcela, emp_status, emp_id) VALUES(?DataEMP, ?TipoEMP, ?ValorEMP, ?QntdParcela, ?ValorParcela, ?Status, ?Id)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?DataEMP", emprestimo.DataEMP));
            objCommand.Parameters.Add(Mapped.Parameter("?TipoEMP", emprestimo.TipoEMP));
            objCommand.Parameters.Add(Mapped.Parameter("?ValorEMP", emprestimo.ValorEMP));
            objCommand.Parameters.Add(Mapped.Parameter("?QntdParcela", emprestimo.QntdParcela));
            objCommand.Parameters.Add(Mapped.Parameter("?ValorParcela", emprestimo.ValorParcela));
            objCommand.Parameters.Add(Mapped.Parameter("?Status", emprestimo.Status));
            objCommand.Parameters.Add(Mapped.Parameter("?Id", emprestimo.Id));


            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //selectall
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select e.emp_codigo, emp_data, emp_tipo , emp_valor, emp_qntdParcela, emp_valorParcela, emp_status, emp_id, tax_taxaJuros, cli_cpf, usu_nome, loj_id from emp_emprestimo e inner join ven_venda v on e.emp_codigo = v.emp_codigo inner join usu_usuario u on u.usu_codigo = v.usu_codigo inner join tax_taxa t on t.tax_codigo = v.tax_codigo inner join cli_cliente c on c.cli_codigo = v.cli_codigo inner join loj_loja l on l.loj_codigo = v.loj_codigo;", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        //update
        //delete

        //vincular
        public bool Vincular(int idusuario, int idloja, int idtaxa, int idcliente, int idemprestimo)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO ven_venda(tax_codigo, cli_codigo, loj_codigo, usu_codigo, emp_codigo ) VALUES (?taxa, ?cliente, ?loja, ?usuario, ?emprestimo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?taxa", idtaxa));
            objCommand.Parameters.Add(Mapped.Parameter("?cliente", idcliente));
            objCommand.Parameters.Add(Mapped.Parameter("?loja", idloja));
            objCommand.Parameters.Add(Mapped.Parameter("?usuario", idusuario));
            objCommand.Parameters.Add(Mapped.Parameter("?emprestimo", idemprestimo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        //construtor
        public EmprestimoBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }

}
