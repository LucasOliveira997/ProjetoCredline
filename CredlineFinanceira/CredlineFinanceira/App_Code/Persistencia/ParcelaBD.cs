using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using CredlineFinanceira.App_Code.Classes;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class ParcelaBD
    {
        //métodos
        //insert
        public bool Insert(Parcela parcela)
        {

            System.Data.IDbConnection objConexao;
                System.Data.IDbCommand objCommand;
                string sql = "INSERT INTO par_parcela(par_codigo, par_cadastro, par_numero, par_valor, par_status, par_pagamento, par_desconto, par_vencimento) VALUES(?CodigoPAR, ?CadastroPAR, ?NumeroPAR, ?ValorPAR, ?StatusPAR, ?PagamentoPAR, ?DescontoPAR, ?VencimentoPAR)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?CodigoPAR", parcela.CodigoPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?CadastroPAR", parcela.CadastroPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?NumeroPAR", parcela.NumeroPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?ValorPAR", parcela.ValorPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?StatusPAR", parcela.StatusPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?PagamentoPAR", parcela.PagamentoPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?DescontoPAR", parcela.DescontoPAR));
                objCommand.Parameters.Add(Mapped.Parameter("?VencimentoPAR", parcela.VencimentoPAR));
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
            objCommand = Mapped.Command("SELECT * FROM par_parcela ", objConexao);
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
        public ParcelaBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
