using System.ComponentModel.DataAnnotations;

namespace BackCRUD.Models
{
    public class TarjetaCreditoModel
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string? Titular { get; set; }
        [Required]
        public string? NumeroTarjeta { get; set; }
        [Required]
        public string? FechaExpiracion { get; set; }
        [Required]
        public string? CVV { get; set; }
        
        public int Estatus { get; set; }
    }
}
