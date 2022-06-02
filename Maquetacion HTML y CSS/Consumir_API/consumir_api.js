var clima = '';
var clima_descripcion = '';
var temperatura = 0;
var humedad = 0;
var viento_vel = 0;
var nombre = '';
var DATA = [];
var output_div = [];
var card = [];
var idN = 0;

document.getElementById('consultar').addEventListener('click', ciudad);
document.getElementById('input').addEventListener('keypress', e => {
  console.log(e.keyCode);
  if (e.keyCode === 13) {
    ciudad();
  }
});

function mostrar(obj){
  idN ++;
  let output = document.getElementById('output');
  output.innerHTML = '';
  output_div.push(`
  <div class="card" id='div${idN}'>
    <div class='content'>
      <h2 id='num'>${idN}</h2>
      <h2 id='titulo' class="card-text">${obj[5]}</h2>
      <h3 class="card-text">${obj[0]}</h3>
      <p class="card-text">${obj[1]}</p>
      <p class="card-text">Temperatura: ${obj[2]}°C</p>
      <p class="card-text">Humedad: ${obj[3]}%</p>
      <p class="card-text">Viento: ${obj[4]}km/h</p>
    </div>
  </div>`);
  for (let i = 0; i < output_div.length; i++) {
    let card_output = output_div[i];
    card.push(card_output);
  }
  card.reverse();
  let id_temp = 0;
  for (let i = 0; i < card.length; i++) {
    output.innerHTML += card[i];
  }
  card = [];
  VanillaTilt.init(document.querySelectorAll(".card"), {
		max: 25,
		speed: 400});
}

async function consulta(city){
  var URL= `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=ebfabd21f6f0f7263333506768d5241f`;
  await fetch(URL)
    .then( response => response.json()).then( res => {
        clima = res.weather[0].main;
        clima_descripcion = res.weather[0].description; 
        temperatura = (res.main.temp - 273.15).toFixed(2);
        humedad = res.main.humidity;
        viento_vel = res.wind.speed;
        nombre = res.name;
        return clima, clima_descripcion, temperatura, humedad, viento_vel, nombre, error = false;
    }).catch( err => {
      return error = true;
    });
    if(error){
      swal('Ingrese una ciudad valida')
    }
    else{
      DATA = [clima, clima_descripcion, temperatura, humedad, viento_vel, nombre];
      mostrar(DATA);
    }
}

function ciudad() {
    const input = document.getElementById('input');
    if(input.value == ''){
      swal('Ingrese una ciudad')
    }
    else {
      input.setCustomValidity('');
      let query = document.getElementById('input').value.toLowerCase();
      consulta(query);
    }
}