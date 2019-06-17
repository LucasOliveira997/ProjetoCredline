using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CredlineFinanceira.App_Code.Classes
{
    public class Taxa
    {
        public int CodigoTAX { get; set; }
        public int BancoTAX { get; set; }
        public string TipoTAX { get; set; }
        public string StatusTAX { get; set; }
        public string JurosTAX { get; set; }

        public List<Emprestimo> Emprestimos { get; set; }


        public Taxa()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}