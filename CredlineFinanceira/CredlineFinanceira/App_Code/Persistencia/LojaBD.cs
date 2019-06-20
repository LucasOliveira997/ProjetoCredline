using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using CredlineFinanceira.App_Code.Classes;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class LojaBD
    {

        //métodos
        //insert
        public bool Insert(Loja loja)
        {
                System.Data.IDbConnection objConexao;
                System.Data.IDbCommand objCommand;
                string sql = "INSERT INTO loj_loja(loj_codigo, loj_cnpj, loj_id, loj_endereco) VALUES( ?CodigoLOJ, ?CnpjLOJ, ?IdLOJ, ?EnderecoLOJ)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?CodigoLOJ", loja.CodigoLOJ));
                objCommand.Parameters.Add(Mapped.Parameter("?CnpjLOJ", loja.CnpjLOJ));
                objCommand.Parameters.Add(Mapped.Parameter("?IdLOJ", loja.IdLOJ));
                objCommand.Parameters.Add(Mapped.Parameter("?EnderecoLOJ", loja.EnderecoLOJ));
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
            objCommand = Mapped.Command("SELECT * FROM loj_loja", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select 
        public Loja Select(int CodigoLOJ)
        {
            Loja obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM loj_loja WHERE loj_codigo = ?CodigoLOJ", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoLOJ", CodigoLOJ));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Loja();
                obj.CodigoLOJ = Convert.ToInt32(objDataReader["loj_codigo"]);
                obj.CnpjLOJ = Convert.ToString(objDataReader["loj_cnpj"]);
                obj.IdLOJ = Convert.ToString(objDataReader["loj_id"]);
                obj.EnderecoLOJ = Convert.ToString(objDataReader["loj_endereco"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(Loja loja)
        {
            System.Data.IDbConnection objConexao; System.Data.IDbCommand objCommand;
            string sql = "UPDATE loj_loja SET loj_codigo=?CodigoLOJ, loj_cnpj=?CnpjLOJ, loj_id=?IdLOJ, loj_endereco=?EnderecoLOJ WHERE loj_codigo=?CodigoLOJ";
            objConexao = Mapped.Connection(); objCommand = Mapped.Command(sql, objConexao);
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoLOJ", loja.CodigoLOJ));
            objCommand.Parameters.Add(Mapped.Parameter("?CnpjLOJ", loja.CnpjLOJ));
            objCommand.Parameters.Add(Mapped.Parameter("?IdLOJ", loja.IdLOJ));
            objCommand.Parameters.Add(Mapped.Parameter("?EnderecoLOJ", loja.EnderecoLOJ));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //delete 
        public bool Delete(int Loja)
        {
            System.Data.IDbConnection objConexao; System.Data.IDbCommand objCommand;
            string sql = "DELETE FROM loj_loja WHERE loj_codigo=?CodigoLOJ";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoLOJ", Loja));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //construtor
        public LojaBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}