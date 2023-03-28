namespace BackCRUD.Models
{
    public class Categoria:ResponseModel
    {
        public int IDCategoria { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public bool Estado { get; set; }
    }
}
