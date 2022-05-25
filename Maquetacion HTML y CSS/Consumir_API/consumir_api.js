var clima = '';
var clima_descripcion = '';
var temperatura = 0;
var humedad = 0;
var viento_vel = 0;
var nombre = '';
var DATA = [];

function mostrar(obj){
  let output = document.getElementById('output');
  output.innerHTML += `
    <ul>
      <li>Clima: ${obj[0]}</li>
      <li>Clima Descripcion: ${obj[1]}</li>
      <li>Temperatura: ${obj[2]}</li>
      <li>Humedad: ${obj[3]}</li>
      <li>Velocidad Viento: ${obj[4]}Km/h</li>
      <li>Nombre: ${obj[5]}</li>
    </ul>`; 
  DATA = [];
  clima = '';
  clima_descripcion = '';
  temperatura = 0;
  humedad = 0;
  viento_vel = 0;
  nombre = '';
}

async function consulta(city){
  console.log(city);
  var URL= `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=ebfabd21f6f0f7263333506768d5241f`;
  console.log(URL);
  await fetch(URL)
    .then( response => response.json()).then( res => {
      console.log(res);
      clima = res.weather[0].main;
      clima_descripcion = res.weather[0].description; 
      temperatura = res.main.temp - 273.15;
      humedad = res.main.humidity;
      viento_vel = res.wind.speed;
      nombre = res.name;
      console.log(clima, clima_descripcion, temperatura, humedad, viento_vel, nombre);
      return clima, clima_descripcion, temperatura, humedad, viento_vel, nombre;
    }).catch( err => {
      console.log(err);
    });
    DATA = [clima, clima_descripcion, temperatura, humedad, viento_vel, nombre];
    console.log(DATA);
    mostrar(DATA);
}

function ciudad() {
    let query = document.getElementById('ciudad').value.toLowerCase();
    console.log(query);
    consulta(query);
}