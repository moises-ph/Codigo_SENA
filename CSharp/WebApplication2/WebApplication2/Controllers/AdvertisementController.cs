using EasyHouseRent.Model;
using EasyHouseRent.Model.Entities;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EasyHouseRent.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AdvertisementController : ControllerBase
    {

        BaseData db = new BaseData(); 
        Anuncios anuncios = new Anuncios(); 
        // GET: api/<AdController>
        [HttpGet]
        public string Get([FromQuery] Anuncios Ad)
        {
            string sql = $"SELECT * FROM anuncios";
            return db.ConvertDataTabletoString(sql);
        }


        // GET api/<AdController>/5
        [HttpGet("{id}")]
        public string GetAd(int id, [FromQuery] Anuncios Ad)
        {
            string sql = $"SELECT * FROM anuncios where idusuario = '{id}'";
            return db.ConvertDataTabletoString(sql);
        }

        // POST api/<AdController>
        [HttpPost]
        public void Post([FromBody] Anuncios Ad)
        {
            string sql = "INSERT INTO anuncios (idusuario,titulo,descripcion,puntuacion,direccion,estado,tipoEstructura,valor,fecha,certificado) VALUES ('" + Ad.idusuario + "','" + Ad.titulo + "','" + Ad.descripcion + "','" + Ad.puntuacion + "','" + Ad.direccion + "','" + Ad.estado + "','" + Ad.tipoEstructura + "','" + Ad.valor + "','" + Ad.fecha + "','" + Ad.certificado + "');";

        }

        // PUT api/<AdController>/5
        [HttpPut("{id}")]
        public void Put([FromBody] Anuncios ad)
        {
            string sql = "UPDATE anuncios SET titulo = '" + ad.titulo + "', descripcion = '" + ad.descripcion + "', puntuacion = '" + ad.puntuacion + "', direccion ='" + ad.direccion + "', estado ='" + ad.estado + "', tipoEstructura ='" + ad.tipoEstructura + "', valor ='" + ad.valor + "', fecha ='" + ad.fecha + "', certificado ='" + ad.certificado + "'  WHERE idanuncio = '" + ad.idanuncio + "'";

        }

        // DELETE api/<AdController>/5
        [HttpDelete("{id}")]
        public void Delete([FromBody] Anuncios ad)
        {
            string sql = $"DELETE FROM anuncios WHERE idanuncio =" + ad.idanuncio;

        }
    }
}
