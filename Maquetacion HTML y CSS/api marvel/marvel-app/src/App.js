import './App.css';
import { useState } from 'react';

function App() {
  const [data_ls, setData] = useState({});

  async function api (e){
    let url = `http://gateway.marvel.com/v1/public/${e.target.value}?ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09`;
    await fetch(url)
      .then(res => res.json())
      .then(data => {
        console.log(data);
      });
  }
  return (
    <>
      <h1>Consumiendo la API de Marvel</h1>
      <nav className='nav'>
        <ul className='lista'>
          <li><button onClick={api} value='characters' >Personajes</button></li>
          <li><button onClick={api} value='comics'>Comics</button></li>
          <li><button onClick={api} value='creators'>Creadores</button></li>
          <li><button onClick={api} value='events'>Eventos</button></li>
          <li><button onClick={api} value='series'>Series</button></li>
          <li><button onClick={api} value='stories'>Historias</button></li>
        </ul>
      </nav>
      <div className='container'></div>
    </>
  );
}

export default App;
