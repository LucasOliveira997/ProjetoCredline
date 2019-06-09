using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CredlineFinanceira.App_Code.Classes
{
    public class Emprestimo
    {
        public int CodigoEMP { get; set; }
        public DateTime DataEMP { get; set; }
        public double ValorEMP { get; set; }
        public string TipoEMP { get; set; }
        public int Taxa { get; set; }
        public int Cliente { get; set; }
        public string LojaID { get; set; }

        public Emprestimo()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}