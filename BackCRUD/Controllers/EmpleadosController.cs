using BackCRUD.Models;
using BackCRUD.Services;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BackCRUD.Controllers
{
    
    [Route("api/[controller]")]
    [ApiController]

  
    public class EmpleadosController : ControllerBase
    {
        EmpleadosServices empleadosServices = new EmpleadosServices();

        // GET: api/<EmpleadosController>
        [HttpPost]
        [Route("getEmpleados")]
        public dynamic GetEmpleados() { 
            return empleadosServices.getEmpleadosServices();
        }

        // GET api/<EmpleadosController>/5
        [HttpPost]
        [Route("getIdEmpleados")]
        public dynamic GetIdEmpleados(Empleados empleados)
        {
            return empleadosServices.getIdEmpleadosServices(empleados.IdEmpleado);
        }

        // POST api/<EmpleadosController>
        [HttpPost]
        [Route("addEmpleados")]
        public dynamic addEmpleados(Empleados empleados)
        {
            return empleadosServices.addEmpleadoServices(empleados);
        }

        // PUT api/<EmpleadosController>/5
        [HttpPost]
        [Route("updateEmpleados")]
        public dynamic updateEmpleados(Empleados empleados)
        {
            return empleadosServices.updateEmpleadoServices(empleados);
        }

        // DELETE api/<EmpleadosController>/5
        [HttpPost]
        [Route("deleteEmpleados")]
        public dynamic deleteEmpleados(Empleados empleados)
        {
            return empleadosServices.deleteEmpleadoServices(empleados.IdEmpleado);
        }
    }
}
