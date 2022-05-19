var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Mphr_2015",
    database: "registro_prueba"
});

con.connect(function(err){
    if(err) throw err;
    console.log("Connected!");
    var sql = `INSERT INTO usuario(usuario_nombre, usuario_apellido, correo_electronico, contraseña) VALUES ('Moises', 'Pineda', 'mois.mp8@gmail.com', '12345')`;
    con.query(sql, (err, result) => {
        if(err) throw err;
        console.log("1 record inserted");
    })
});