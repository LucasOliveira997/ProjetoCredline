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
            objCommand = Mapped.Command("select * from emp_emprestimo", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //selectvenda
        public DataSet SelectVenda()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select e.emp_codigo, emp_data, emp_tipo, emp_valor, emp_qntdParcela, emp_valorParcela, emp_status, emp_id, tax_taxaJuros, cli_cpf, usu_nome, loj_id from emp_emprestimo e inner join ven_venda v on e.emp_codigo = v.emp_codigo inner join usu_usuario u on u.usu_codigo = v.usu_codigo inner join tax_taxa t on t.tax_codigo = v.tax_codigo inner join cli_cliente c on c.cli_codigo = v.cli_codigo inner join loj_loja l on l.loj_codigo = v.loj_codigo;", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //delete 
        public bool Delete(int Emprestimo)
        {
            System.Data.IDbConnection objConexao; System.Data.IDbCommand objCommand;
            string sql = "SET foreign_key_checks = 0; Delete from emp_emprestimo where emp_codigo = ?CodigoEMP; SET foreign_key_checks = 1; ";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoEMP", Emprestimo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        // select média
        public DataSet SelectMedia()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select avg(emp_valor) as 'media', emp_tipo as tipo from emp_emprestimo group by emp_tipo;", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        // select total
        public DataSet SelectTotal()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select sum(`emp_valor`) as total, month(emp_data) as mes, year(emp_data) as ano from emp_emprestimo group by year(emp_data), month(emp_data);", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //vincular
        public bool Vincular(int idtaxa, int idcliente, int idloja, int idusuario, int idemprestimo)
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
        //Search
        public DataSet Search(string termo)
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select e.emp_codigo, emp_data, emp_tipo , emp_valor, emp_qntdParcela, emp_valorParcela, emp_status, emp_id, tax_taxaJuros, cli_cpf, usu_nome, loj_id from emp_emprestimo e inner join ven_venda v on e.emp_codigo = v.emp_codigo inner join usu_usuario u on u.usu_codigo = v.usu_codigo inner join tax_taxa t on t.tax_codigo = v.tax_codigo inner join cli_cliente c on c.cli_codigo = v.cli_codigo inner join loj_loja l on l.loj_codigo = v.loj_codigo WHERE emp_id LIKE ?Id  or cli_cpf LIKE ?cpf or loj_id like ?Loja or usu_nome like ?usuario ORDER BY cli_nome", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cpf", '%' + termo + '%'));
            objCommand.Parameters.Add(Mapped.Parameter("?Id", '%' + termo + '%'));
            objCommand.Parameters.Add(Mapped.Parameter("?Loja", '%' + termo + '%'));
            objCommand.Parameters.Add(Mapped.Parameter("?usuario", '%' + termo + '%'));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
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
