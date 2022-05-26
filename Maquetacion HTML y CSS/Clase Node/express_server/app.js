var express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

var app = express()
.use(cors({credentials: true, origin: 'http://localhost:4200'
}))
.use(bodyParser.urlencoded({extended: false}))
.use(bodyParser.json());


//####FORMAS DE COMUNICARNOS CON UN SERVER######

//JSON
//Ruta que recibe un json con propiedades:
//password, email, nombres, apellidos, ciudad
app.post('/register', function (req, res) {
  var password = req.body.password;
  var email = req.body.email;
  var nombres = req.body.nombres;
  var apellidos = req.body.apellidos;
  var ciudad = req.body.ciudad;
  return res.status(200).json({
            "Status": "ok registrado", 
            "reg": true, 
            "email": email,
            "nombres": nombres
          });
});


//FORMULARIO HTML
//Ruta que recibe un formulario con inputs:
//password, email, nombres, apellidos, ciudad
app.post('/registerform', function (req, res) {
  var password = req.body.password;
  var email = req.body.email;
  var nombres = req.body.nombres;
  var apellidos = req.body.apellidos;
  var ciudad = req.body.ciudad;
  return res.status(200).json({
            "Status": "ok registrado", 
            "reg": true, 
            "email": email,
            "nombres": nombres
          });
});


//PARAMETROS DE CONSULTA(STRING QUERY)
//Ruta que recibe dos parametros de consulta:
//password, email
app.get('/login', function (req, res) {
  var password = req.query.password;
  var email = req.query.email;
  return res.status(200).json({
            "Status": "ok registrado", 
            "reg": true,
            "password": password,
            "email": email
          });
});


//PARAMETROS DE RUTA
//Url que tiene dos parametros de ruta:
//codigo, fecha
app.delete('/eliminarcompra/:codigo/:fecha', function (req, res) {
  var codigo = req.params.codigo;
  var fecha = req.params.fecha;
  return res.status(200).json({
            "Status": "ok registrado", 
            "reg": true,
            "codigo": codigo,
            "fecha": fecha
          });
});


//CABECERAS
//Ruta que recibe dos cabeceras llamadas
//Auth, Code
app.post('/cabeceras', function (req, res) {
  var auth = req.headers.auth;
  var code = req.headers.code;
  return res.status(200).json({
            "Status": "ok registrado", 
            "reg": true,
            "auth": auth,
            "code": code
          });
});




app.listen(10101, function () {
  console.log('Example app listening on port 10101!');
});
