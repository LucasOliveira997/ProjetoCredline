using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CredlineFinanceira.App_Code.Classes;
using FATEC;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class ServicoBD
    {
        //métodos
        //insert
        public bool Insert(Servico servico)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO ser_servico( ser_codigo, ser_nome, ser_tipo) VALUES( ?CodigoSER, ?NomeSER, ?TipoSER)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoSER", servico.CodigoSER));
            objCommand.Parameters.Add(Mapped.Parameter("?NomeSER", servico.NomeSER));
            objCommand.Parameters.Add(Mapped.Parameter("?TipoSER", servico.TipoSER));
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
            objCommand = Mapped.Command("SELECT * FROM ser_servico", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

    }
}