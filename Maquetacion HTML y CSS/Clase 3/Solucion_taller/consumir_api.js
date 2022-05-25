
var temperatura = 0;

fetch('https://api.openweathermap.org/data/2.5/weather?q=bogota&appid=ebfabd21f6f0f7263333506768d5241f')
  .then( response => response.json()).then( res => {
    console.log(res);
    temperatura = res.main.temp - 273.15;
    console.log(temperatura);
  }).catch( err => {
    console.log(err);
  })