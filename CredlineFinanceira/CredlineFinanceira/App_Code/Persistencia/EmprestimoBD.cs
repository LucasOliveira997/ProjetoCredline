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
            string sql = "INSERT INTO emp_emprestimo (tax_codigo, cli_codigo, loj_id, emp_data, emp_valor, emp_tipo) VALUES(?Taxa, ?Cliente, ?LojaID, ?DataEMP, ?ValorEMP, ?TipoEMP)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?Taxa", emprestimo.Taxa));
            objCommand.Parameters.Add(Mapped.Parameter("?Cliente", emprestimo.Cliente));
            objCommand.Parameters.Add(Mapped.Parameter("?LojaID", emprestimo.LojaID));
            objCommand.Parameters.Add(Mapped.Parameter("?DataEMP", emprestimo.DataEMP));
            objCommand.Parameters.Add(Mapped.Parameter("?ValorEMP", emprestimo.ValorEMP));
            objCommand.Parameters.Add(Mapped.Parameter("?TipoEMP", emprestimo.TipoEMP));

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
            objCommand = Mapped.Command("SELECT * FROM emp_emprestimo", objConexao);
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
        //construtor
        public EmprestimoBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }

}
