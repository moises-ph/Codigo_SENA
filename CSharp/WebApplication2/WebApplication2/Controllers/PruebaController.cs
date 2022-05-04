using EasyHouseRent.Model;
using EasyHouseRent.Model.Entities;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication2.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PruebaController : ControllerBase
    {
        BaseData db = new BaseData();
        Departamento departamento = new Departamento();
        // GET: api/<PruebaController>
        [HttpGet]
        public string Get()
        {
            string sql = "SELECT * FROM departamento WHERE nombre != 'desconocido'";
            return db.ConvertDataTabletoString(sql);
        }

        // GET api/<PruebaController>/5
        [HttpGet("{id}")]
        public void Get(int id)
        {

        }

        // POST api/<PruebaController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<PruebaController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<PruebaController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
