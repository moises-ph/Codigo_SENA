using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace EasyHouseRent.Model.Entities
{

    /*public struct Usuarios
    {

    }*/
    public class Usuarios
    {
        BaseData db = new BaseData();

        private int _idusuario = 0;

        public int idusuario { set { _idusuario = value; } get { return _idusuario; } }

        private string _nombre = "";

        public string nombre { set { _nombre = value; } get { return _nombre; } }

        private string _email = "";

        public string email { set { _email = value; } get { return _email; } }

        private string _contraseña = "";

        public string contraseña { set { _contraseña = value; } get { return _contraseña; } }

        private string _apellidos = "";
        public string apellidos { set { _apellidos = value; } get { return _apellidos; } }

        private int _edad = 0;
        public int edad { set { _edad = value; } get { return _edad; } }
        private string _telefono = "";
        public string telefono { set { _telefono = value; } get { return _telefono; } }

        private string _estado = "";
        public string estado { set { _estado = value; } get { return _estado; } }   
        private int _departamento = 0;
        public int departamento { set { _departamento = value; } get { return _departamento; } }
        private int _municipio = 0;
        public int municipio { set { _municipio = value; } get { return _municipio; } }


        public bool ConfirmationEmail(string sql)
        {
            DataTable dt = db.getTable(sql);
            if (dt != null && dt.Rows.Count==1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}