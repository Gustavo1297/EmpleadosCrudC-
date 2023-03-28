using BackCRUD.Models;
using BackCRUD.Recursos;
using Newtonsoft.Json;
using System.Data;

namespace BackCRUD.Services
{

    interface IEmpleadosServices
    {
        dynamic getEmpleadosServices();
        dynamic addEmpleadoServices(Empleados empleados);
        dynamic updateEmpleadoServices(Empleados empleados);
        dynamic deleteEmpleadoServices(int idEmpleado);
        dynamic getIdEmpleadosServices(int idEmpleado);
    }
    public class EmpleadosServices:IEmpleadosServices
    {
        public dynamic getEmpleadosServices()
        {
            try
            {
                DataTable tEmpleados = DbDatos.Listar("Empleados_All");
                DataTable tAreas = DbDatos.Listar("Areas_All");

                int count = tEmpleados.Rows.Count;
                if (count>=1)
                {
                    string jsonEmpleados = JsonConvert.SerializeObject(tEmpleados);
                    string jsonAreas = JsonConvert.SerializeObject(tAreas);

                    return new
                    {
                        code = 200,
                        message = "La consulta se realiz\u00F3 con \u00E9xito",
                        causa = "",
                        data = new
                        {
                            empleados = JsonConvert.DeserializeObject<List<Empleados>>(jsonEmpleados),
                            areas= JsonConvert.DeserializeObject<List<Areas>>(jsonAreas),
                        }
                    };
                }
                else
                {
                    return new
                    {
                        code = 404,
                        message = "No se encontr\u00F3 registro",
                    causa = "",
                        data = new
                        {
                            
                        }
                    };
                }
            }
            catch (Exception ex)
            {
                
                return new
                {
                    code = 400,
                    message = "Error en web service",
                    causa = ex.ToString(),
                    data = new
                    {

                    }
                };
                
            }
            
            
        }

        public dynamic getIdEmpleadosServices(int idEmpleado)
        {
            try
            {
                List<Parametro> parametros = new()
                    {
                        new Parametro("@IdEmpleado",idEmpleado.ToString())
                    };
                DataTable tEmpleados = DbDatos.Listar("Empleados_GetId",parametros);

                int count = tEmpleados.Rows.Count;
                if (count >= 1)
                {
                    string jsonEmpleados = JsonConvert.SerializeObject(tEmpleados);
                    return new
                    {
                        code = 200,
                        message = "La consulta se realiz\u00F3 con \u00E9xito",
                        causa = "",
                        data = new
                        {
                            empleados = JsonConvert.DeserializeObject<List<Empleados>>(jsonEmpleados)
                        }
                    };
                }
                else
                {
                    return new
                    {
                        code = 404,
                        message = "No se encontr\u00F3 registro",
                        causa = "",
                        data = new
                        {

                        }
                    };
                }
            }
            catch (Exception ex)
            {

                return new
                {
                    code = 400,
                    message = "Error en web service",
                    causa = ex.ToString(),
                    data = new
                    {

                    }
                };

            }


        }
        public dynamic addEmpleadoServices(Empleados empleados)
        {
            try
            {
                List<Parametro> parametros = new()
                {
                    new Parametro("@Nombre", empleados.Nombre),
                    new Parametro("@Apellido",empleados.Apellido),
                    new Parametro("@Correo",empleados.Correo),
                    new Parametro("@IdArea",empleados.IdArea.ToString())
                };
                bool Exito = DbDatos.Ejecutar("Empleados_Add",parametros);

                return new
                {
                    code = 200,
                    message = Exito ? "Exito" : "Error al guardar",
                    causa = "",
                    data =""
                };
            }
            catch (Exception ex)
            {

                return new
                {
                    code = 400,
                    message = "Error en web service",
                    causa = ex.ToString(),
                    data = new
                    {

                    }
                };

            }
        }
        public dynamic updateEmpleadoServices(Empleados empleados)
        {
            try
            {
                List<Parametro> parametros = new()
                {
                    new Parametro("@IdEmpleado", empleados.IdEmpleado.ToString()),
                    new Parametro("@Nombre", empleados.Nombre),
                    new Parametro("@Apellido",empleados.Apellido),
                    new Parametro("@Correo",empleados.Correo),
                    new Parametro("@IdArea",empleados.IdArea.ToString())
                };
                bool Exito = DbDatos.Ejecutar("Empleados_Update", parametros);

                return new
                {
                    code = 200,
                    message = Exito ? "Exito" : "Error al actualizar",
                    causa = "",
                    data = ""
                };
            }
            catch (Exception ex)
            {

                return new
                {
                    code = 400,
                    message = "Error en web service",
                    causa = ex.ToString(),
                    data = new
                    {

                    }
                };

            }
        }
        public dynamic deleteEmpleadoServices(int idEmpleado)
        {
            try
            {
                List<Parametro> parametros = new()
                {
                    new Parametro("@IdEmpleado", idEmpleado.ToString())
                };
                bool Exito = DbDatos.Ejecutar("Empleados_Delete", parametros);

                return new
                {
                    code = 200,
                    message = Exito ? "Exito" : "Error al eliminar",
                    causa = "",
                    data = ""
                };
            }
            catch (Exception ex)
            {

                return new
                {
                    code = 400,
                    message = "Error en web service",
                    causa = ex.ToString(),
                    data = new
                    {

                    }
                };

            }
        }
    }
}
