using BackCRUD.Models;
using BackCRUD.Recursos;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Data;
using System.Net.Http.Json;
using System.Text.Json.Serialization;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BackCRUD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductoController : ControllerBase
    {
        // GET: api/<ProductoController>
        [HttpGet]
        [Route("getProductos")]
        public dynamic getProductos()
        {
            List<Parametro> parametros = new()
            {
                new Parametro("@idEstado","1")
            };

            DataTable tCategoria = DbDatos.Listar("Categoria_Listar",parametros);
            DataTable tProducto = DbDatos.Listar("Producto_Listar");


            string jsonCategoria = JsonConvert.SerializeObject(tCategoria);
            string jsonProductos = JsonConvert.SerializeObject(tProducto);


            return new
            {
                success = true,
                message = "Exito!",
                code = 200,
                result = new {
                    categoria = JsonConvert.DeserializeObject<List<Categoria>>(jsonCategoria),
                    productos = JsonConvert.DeserializeObject<List<Producto>>(jsonProductos),
                }
            };
        }

        // GET api/<ProductoController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<ProductoController>
        [HttpPost]
        [Route("agregar")]
        public dynamic Post(Producto producto)
        {
            List<Parametro> parametros = new()
            {
                new Parametro("@IdCategoria", producto.IDCategoria.ToString()),
                new Parametro("@Nombre",producto.Nombre),
                new Parametro("@Precio",producto.Precio)
            };

            bool Exito = DbDatos.Ejecutar("Product_Agregar", parametros);
            return new
            {
                success = Exito,
                message = Exito ? "Exito" : "Error al guardar",
                result = ""
            };


        }

        // PUT api/<ProductoController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<ProductoController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
