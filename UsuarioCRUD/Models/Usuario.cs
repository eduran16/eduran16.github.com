using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace UsuarioCRUD.Models
{
    public class Usuario
    {
        public int idUsuario { get; set; }
        [DisplayName("Nombre")]
        public string nombre { get; set; }
        [DisplayName("Apellido")]
        public string apellido { get; set; }
        [DisplayName("Genero")]
        public string sexo { get; set; }
        [DisplayName("Nombre de usuario")]
        public string userName { get ;set; }
        [DisplayName("Correo Electronico")]
        public string email { get; set; }
        [DisplayName("Contraseña")]
        public string password { get; set; }
        [DisplayName("Comentario (Opcional)")]
        public string comentario { get; set; }
    }
}