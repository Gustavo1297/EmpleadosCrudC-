using System.ComponentModel.DataAnnotations;

namespace BackCRUD.Models
{
    public class Empleados
    {
        [Key]
        public int IdEmpleado { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Correo { get; set; }
        public DateTime Fecha_Ingreso { get; set; }

        public int Estatus { get; set; }
        public int IdArea { get; set; }
        public string Area { get; set; }
    }
}
