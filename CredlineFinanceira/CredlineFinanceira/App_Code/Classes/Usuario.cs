﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CredlineFinanceira.App_Code.Classes;
using System.Data;
using FATEC;

namespace CredlineFinanceira.App_Code.Classes
{
    //comentario de teste
    public class Usuario
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public string Celular { get; set; }
        public string Endereco { get; set; }
        public DateTime DataContrato { get; set; }
        public string Cpf { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public bool Cargo { get; set; }
    
        public List<Loja> Lojas { get; set; }
        public List<Emprestimo> Emprestimos { get; set; }


        public Usuario()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}