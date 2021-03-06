﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FATEC;
using CredlineFinanceira.App_Code.Classes;
using CredlineFinanceira.App_Code.Persistencia;
using System.Data;

namespace CredlineFinanceira.App_Code.Persistencia
{
    public class ClienteBD
    {
        //métodos
        //insert
        public bool Insert(Cliente cliente)
        {


            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "INSERT INTO cli_cliente (cli_codigo, cli_nome, cLi_telefone, cli_celular, cli_endereco, cli_dataNascimento, cli_cpf, cli_ocupacao, cli_renda, cli_rg) VALUES(?CodigoCLI, ?NomeCLI, ?TelefoneCLI, ?CelularCLI, ?EnderecoCLI, ?NascimentoCLI, ?CPfCLI, ?OcupacaoCLI, ?RendaCLI, ?RgCLI)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoCLI", cliente.CodigoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?NomeCLI", cliente.NomeCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?TelefoneCLI", cliente.TelefoneCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?CelularCLI", cliente.CelularCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?EnderecoCLI", cliente.EnderecoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?NascimentoCLI", cliente.NascimentoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?CpfCLI", cliente.CpfCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?OcupacaoCLI", cliente.OcupacaoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?RendaCLI", cliente.RendaCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?RgCLI", cliente.RgCLI));
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
            objCommand = Mapped.Command("SELECT * FROM cli_cliente group by cli_nome", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        // Select Faixa
        public DataSet SelectFaixa()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select if(year(cli_dataNascimento) >= 1984, '18 - 35', if(year(cli_dataNascimento) >= 1974, '35 - 45', if(year(cli_dataNascimento) >= 1964, '45 - 55', if(year(cli_dataNascimento) >= 1954, '55 - 65', if(year(cli_dataNascimento) >= 1924, '65+',  ''))))) as faixa, count(emp_codigo) as quantidade from cli_cliente c inner join ven_venda v on c.cli_codigo = v.cli_codigo group by faixa", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        // Select Contato 
        public DataSet SelectContato()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select count(cli_codigo) as clientes from cli_cliente", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        // Select Contrato 
        public DataSet SelectContrato()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("select count(emp_tipo) as vendas from emp_emprestimo", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select

        public Cliente Select(int CodigoCLI)
        {
            Cliente obj = null;
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM cli_cliente WHERE cli_codigo = ?CodigoCLI", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoCLI", CodigoCLI));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Cliente();
                obj.CodigoCLI = Convert.ToInt32(objDataReader["cli_codigo"]);
                obj.NomeCLI = Convert.ToString(objDataReader["cli_nome"]);
                obj.TelefoneCLI = Convert.ToInt32(objDataReader["cli_telefone"]);
                obj.CelularCLI = Convert.ToInt32(objDataReader["cli_celular"]);
                obj.EnderecoCLI = Convert.ToString(objDataReader["cli_endereco"]);
                obj.NascimentoCLI = Convert.ToDateTime(objDataReader["cli_dataNascimento"]);
                obj.CpfCLI = Convert.ToInt32(objDataReader["cli_cpf"]);
                obj.OcupacaoCLI = Convert.ToString(objDataReader["cli_ocupacao"]);
                obj.RendaCLI = Convert.ToDouble(objDataReader["cli_renda"]);
                obj.RgCLI = Convert.ToInt32(objDataReader["cli_rg"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }


        //update

        public bool Update(Cliente cliente)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "UPDATE cli_cliente SET cli_codigo=?CodigoCLI, cli_nome=?NomeCLI, cli_telefone=?TelefoneCLI, cli_celular=?CelularCLI, cli_endereco=?EnderecoCLI, cli_dataNascimento=?NascimentoCLI, cli_cpf=?CpfCLI, cli_ocupacao=?OcupacaoCLI, cli_renda=?RendaCLI, cli_rg=?RgCLI WHERE cli_codigo=?CodigoCLI";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoCLI", cliente.CodigoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?NomeCLI", cliente.NomeCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?TelefoneCLI", cliente.TelefoneCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?CelularCLI", cliente.CelularCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?EnderecoCLI", cliente.EnderecoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?NascimentoCLI", cliente.NascimentoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?CpfCLI", cliente.CpfCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?OcupacaoCLI", cliente.OcupacaoCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?RendaCLI", cliente.RendaCLI));
            objCommand.Parameters.Add(Mapped.Parameter("?RgCLI", cliente.RgCLI));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }

        //delete

        public bool Delete(int CodigoCLI)
        {
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            string sql = "DELETE FROM cli_cliente WHERE cli_codigo=?CodigoCLI";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?CodigoCLI", CodigoCLI));

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
            objCommand = Mapped.Command("SELECT * FROM cli_cliente WHERE cli_nome LIKE ?NomeCli ORDER BY cli_nome", objConexao);
           
            objCommand.Parameters.Add(Mapped.Parameter("?NomeCli", '%' + termo + '%'));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }



        //construtor
        public ClienteBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
