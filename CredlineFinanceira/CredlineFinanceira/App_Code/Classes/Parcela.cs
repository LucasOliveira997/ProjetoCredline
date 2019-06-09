using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CredlineFinanceira.App_Code.Classes
{
    public class Parcela
    {
        public int CodigoPAR { get; set; }
        public string CadastroPAR { get; set; }
        public int NumeroPAR { get; set; }
        public double ValorPAR { get; set; }
        public string StatusPAR { get; set; }
        public string PagamentoPAR { get; set; }
        public string DescontoPAR { get; set; }
        public DateTime VencimentoPAR { get; set; }

        public Parcela()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}