// Require
const mysql = require('mysql');

// Import DATA
import DATA from './Script.js';

// DB Connection
const conection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Mphr_2015',
    database: 'formulario'
});

conection.connect(function (err) {
    if(err) throw err;
    console.log('Conectado a la base de datos');
});

if(DATA.type == 'INSERT'){registrarDatos(DATA);}
else if(DATA.type == 'UPDATE'){consultarDatos(DATA);}

const consultarDatos = values => {
    let sql_select = "SELECT * FROM registro WHERE documento_identidad = ?";
    let sql_query = mysql_local.format(sql_select, [values.id]);

    conection.query(sql_query, function(err, result){
        if(err) throw err;
        console.log(result);
    });
}

const registrarDatos = values => {
    let sql_insert = "INSERT INTO registro(documento_identidad, nombres, apellidos, edad, genero, email1, contraseña1, tipo_de_usuario, tipo_de_documento) VALUES(?,?,?,?,?,?,?,?,?)";
    let sql_query = mysql.format(sql_insert, [values.id, values.nombre, values.apellido, values.edad, values.genero, values.email, values.password, values.tipo_usr, values.tipo_id]);

    conection.query(sql_query, function(err, result){
        if(err) throw err;
        console.log('Datos registrados');
    });
};

export default {consultarDatos, registrarDatos};