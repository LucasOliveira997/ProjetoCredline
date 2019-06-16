using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CredlineFinanceira.App_Code.Classes
{
    public class Loja
    {
        public int CodigoLOJ { get; set; }
        public string CnpjLOJ { get; set; }
        public string IdLOJ { get; set; }
        public string EnderecoLOJ { get; set; }

        public List<Usuario> Usuarios { get; set; }


        public Loja()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}