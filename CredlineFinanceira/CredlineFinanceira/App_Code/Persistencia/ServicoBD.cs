using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CredlineFinanceira.App_Code.Classes;
using FATEC;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class Servico
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

    }
}