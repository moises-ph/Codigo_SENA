using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace EasyHouseRent.Model.Entities
{
    public class Anuncios
    {
        BaseData db = new BaseData();
        private int _idanuncio = 0;
        public int idanuncio { get { return _idanuncio; } set { _idanuncio = value; } }
        private int _idusuario = 0;
        public int idusuario { get { return _idusuario; } set { _idusuario = value; } }
        private string _titulo = "";
        public string titulo { get { return _titulo; } set { _titulo = value; } }
        private string _descripcion = "";
        public string descripcion { get { return _descripcion; } set { _descripcion = value; } }
        private int _puntuacion = 0;
        public int puntuacion { get { return _puntuacion; } set { _puntuacion = value; } }
        private string _direccion = "";
        public string direccion { get { return _direccion; } set { _direccion = value; } }
        private string _estado = "";
        public string estado { get { return _estado; } set { _estado = value; } }
        private int _tipoEstructura = 0;
        public int tipoEstructura { get { return _tipoEstructura; } set { _tipoEstructura = value; } }
        private float _valor = 0;
        public float valor { get { return _valor; } set { _valor = value; } }
        private string _fecha = "";
        public string fecha { get { return _fecha; } set { _fecha = value; } }
        private string _certificado = "";
        public string certificado { get { return _certificado; } set { _certificado = value; } }

    }
}
