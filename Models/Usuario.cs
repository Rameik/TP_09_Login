using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPLogin.Models
{
    public class Usuario
    {
        public string Username {get; set;}
        public string Contraseña {get; set;}
        public string Nombre {get; set;}
        public string Email {get; set;}
        public string Telefono {get; set;}
    }
}