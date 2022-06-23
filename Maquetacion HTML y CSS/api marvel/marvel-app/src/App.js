import './App.css';
import { useState } from 'react';
import Characters from './characters';
import Comics from './Comics';
import Creators from './Creators';
import Events from './Events';
import Series from './Series';
import Stories from './Stories';

function App() {
  const [data_ls, setData] = useState({});
  const [visibility_char, setVisChar] = useState('hidden');
  const [visibility_comic, setVisCom] = useState('hidden');
  const [visibility_creator, setVisCreat] = useState('hidden');
  const [visibility_event, setVisEv] = useState('hidden');
  const [visibility_serie, setVisSer] = useState('hidden');
  const [visibility_storie, setVisSt] = useState('hidden');

  async function api (e){
    let url = `http://gateway.marvel.com/v1/public/${e.target.value}?ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09`;
    await fetch(url)
      .then(res => res.json())
      .then(data => {
        console.log(data);
        setData(data);
      });
    switch (e.target.value) {
      case 'characters':
        setVisChar('visible')
        break;
      case 'comics':
        setVisCom('visible')
        break;
      case 'creators':
        setVisCreat('visible')
        break;
      case 'events':
        setVisEv('visible')
        break;
      case 'series':
        setVisSer('visible')
        break;
      case 'stories':
        setVisSt('visible')
        break;
      default:
        break;
    }
  }
  return (
    <>
      <h1 className='titulo'>Consumiendo la API de Marvel</h1>
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
      <div className='container'>
        <Characters nombre='Moises' showing ={visibility_char} />
        <Comics showing={visibility_comic}/>
        <Creators showing={visibility_creator}/>
        <Events showing={visibility_event}/>
        <Series showing={visibility_serie}/>
        <Stories showing={visibility_storie}/>
      </div>
    </>
  );
}

export default App;
