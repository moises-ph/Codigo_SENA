using EasyHouseRent.Model;
using EasyHouseRent.Model.Entities;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EasyHouseRent.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class PasswordController : ControllerBase
    {
        BaseData db = new BaseData();
        // GET: api/<PasswordController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<PasswordController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<PasswordController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<PasswordController>/5
        [HttpPut]
        public string Put([FromQuery] Usuarios user)
        {
            string sql = "UPDATE usuarios SET contraseña = '" + user.contraseña + "'  WHERE idusuario = '" + user.email + "'";
            return db.executeSql(sql);
        }

        // DELETE api/<PasswordController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
