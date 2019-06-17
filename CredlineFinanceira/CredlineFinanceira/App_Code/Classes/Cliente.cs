using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CredlineFinanceira.App_Code.Classes
{
    public class Cliente
    {
        public int CodigoCLI { get; set; }
        public string NomeCLI { get; set; }
        public int TelefoneCLI { get; set; }
        public int CelularCLI { get; set; }
        public string EnderecoCLI { get; set; }
        public DateTime NascimentoCLI { get; set; }
        public int CpfCLI { get; set; }
        public string OcupacaoCLI { get; set; }
        public double RendaCLI { get; set; }
        public int RgCLI { get; set; }

        public List<Emprestimo> Emprestimos { get; set; }


        public Cliente()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}