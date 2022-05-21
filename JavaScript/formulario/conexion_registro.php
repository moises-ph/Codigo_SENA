$username = "root";
$password = "Mphr_2015";
$database = "formulario";

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$edad = $_POST['edad'];
$genero = $_POST['Genero'];
$email = $_POST['email'];
$contraseña1 = $_POST['contraseña'];
$tipo_de_usuario = $_POST['Tipo_documento'];
$tipo_de_documento = $_POST['Usuario'];

$query = "INSERT INTO registro(documento_identidad, nombres, apellidos, edad, genero,email1, contraseña1, tipo_de_usuario, tipo_de_documento) values ({$id}, '{$nombre}', '{$apellido}', {$edad}, '{$genero}', '{$email}', '{$contraseña1}', '{$tipo_de_usuario}', '{$tipo_de_documento}')";

$mysqli = new mysqli("localhost", $username, $password, $database);
$mysqli -> select_db($database) or die("No se pudo seleccionar la base de datos");

$result = $mysqli -> query($query) or die("No se pudo ejecutar la consulta");

if($result){
    echo "Se ha registrado correctamente";
}

$mysqli->close();