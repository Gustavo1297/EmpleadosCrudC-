using BackCRUD.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BackCRUD.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TarjetaController : ControllerBase
    {
        // GET: api/<TarjetaController>
        [HttpGet]
        public List<TarjetaCreditoModel> Get()
        {
            List<TarjetaCreditoModel> list = new List<TarjetaCreditoModel>
            {
                new TarjetaCreditoModel
                {
                    Id = 1,
                    Titular="Gustavo",
                    NumeroTarjeta="5467",
                    FechaExpiracion="03/24",
                    CVV="345",
                    Estatus=1
                },
                new TarjetaCreditoModel
                {
                    Id = 1,
                    Titular="Gustavo",
                    NumeroTarjeta="5467",
                    FechaExpiracion="03/24",
                    CVV="345",
                    Estatus=1
                }
        };

            return list;
        }

        // GET api/<TarjetaController>/5
        [HttpGet("{id}")]
        [Route("getTarjeta")]
        public dynamic Get(int id)
        {
            List<TarjetaCreditoModel> list = new List<TarjetaCreditoModel>
            {
                new TarjetaCreditoModel
                {
                    Id = id,
                    Titular="Gustavo",
                    NumeroTarjeta="546735542513",
                    FechaExpiracion="03/24",
                    CVV="345",
                    Estatus=1
                } };

            return new
            {
                success = true,
                message = "Exito!",
                code = 200,
                result = list

            };
        }

        // POST api/<TarjetaController>
        [HttpPost]
        [Route("AddTarjeta")]
        public dynamic Post(TarjetaCreditoModel tarjetaCredito)
        {
            tarjetaCredito.Id = 3;

            return new
            {
                success = true,
                message = "Se agrego correctamente",
                code = 200,
                result = tarjetaCredito
            };

            
        }

        // PUT api/<TarjetaController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<TarjetaController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
