import {consultarDatos, registrarDatos} from './dbConection.js';

if(DATA.type == 'INSERT'){registrarDatos(DATA);}
else if(DATA.type == 'UPDATE'){consultarDatos(DATA);}

export default {consultarDatos, registrarDatos};