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
        public int QntdParcela { get; set; }
        public double ValorParcela { get; set; }
        public string Status { get; set; }

        public List<Cliente> Clientes { get; set; }
        public List<Loja> Lojas { get; set; }
        public List<Usuario> Usuarios { get; set; }
        public List<Taxa> Taxas { get; set; }



        public Emprestimo()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}