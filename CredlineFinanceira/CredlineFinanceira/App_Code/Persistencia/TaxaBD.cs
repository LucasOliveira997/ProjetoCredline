using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using CredlineFinanceira.App_Code.Classes;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class TaxaBD
    {

        //métodos
        //insert
        public bool Insert(Taxa taxa)
        {

            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO tax_taxa( tax_banco, tax_tipo, taxa_status, tax_taxaJuros) VALUES(?BancoTAX, ?TipoTAX, ?StatusTAX, ?JurosTAX)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?BancoTAX", taxa.BancoTAX));
            objCommand.Parameters.Add(Mapped.Parameter("?TipoTAX", taxa.TipoTAX));
            objCommand.Parameters.Add(Mapped.Parameter("?StatusTAX", taxa.StatusTAX));
            objCommand.Parameters.Add(Mapped.Parameter("?JurosTAX", taxa.JurosTAX));
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
            objCommand = Mapped.Command("SELECT * FROM tax_taxa", objConexao);
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
        public TaxaBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
