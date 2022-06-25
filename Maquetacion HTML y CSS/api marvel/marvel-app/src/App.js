import './App.css';
import { useState } from 'react';
import Characters from './characters';
import Comics from './Comics';
import Creators from './Creators';
import Events from './Events';
import Series from './Series';
import Stories from './Stories';

function App() {
  const [visibility_char, setVisChar] = useState('hidden');
  const [visibility_comic, setVisCom] = useState('hidden');
  const [visibility_creator, setVisCreat] = useState('hidden');
  const [visibility_event, setVisEv] = useState('hidden');
  const [visibility_serie, setVisSer] = useState('hidden');
  const [visibility_storie, setVisSt] = useState('hidden');

  function api (e){
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
        <Characters showing ={visibility_char} />
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
