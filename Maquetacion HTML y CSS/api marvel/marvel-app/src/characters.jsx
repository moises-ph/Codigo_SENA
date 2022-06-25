import React, { useEffect } from 'react'
import { useState } from 'react';
import { ReactDOM } from 'react';

class Personajes extends React.Component{
    constructor(props){
        super(props)
    }
    render(){
        return(
        <div className='personaje'>
            <a className='imagen-personaje' target='blank' href={this.props.ref_url}>
                <img src={this.props.img_src}></img>
            </a>
            <div className='info'>
                <h2 className='personaje'>{this.props.name}</h2>
                <p className='descripcion'>{this.props.description}</p>
            </div>
        </div>
        )
    }
}

function Characters(props) {
    const [output, setOut] = useState('');

    const consultar_esp = async (query) =>{
        let url = `http://gateway.marvel.com/v1/public/characters?limit=100&nameStartsWith=${query.target.value}&ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09`
        setOut();
        if(query.target.value === ''){
            setOut();
        }
        else {
            let data;
            await fetch(url)
                .then(res => res.json()).then(data_res => {
                    data_res.data.results.map(item => ReactDOM.render(<Personajes ref_url = {item.urls[0].url} img_src = {item.thumbnail.path + '/portrait_incredible.' + item.thumbnail.extension} nombre = {item.name} descripcion = {item.description} />, document.getElementById('output')))
                    document.getElementById('output').style.display = 'grid';
                }).catch(() => {
                    setOut(<h2>Personaje no encontrado</h2>)
                });
        }
    };

    const consultar_abc = async () =>{
        fetch('')
    }

    return (
        <>
        <div className='container-characters' style={{visibility: props.showing}}>
            <h3>Personajes</h3>
            <input onChange={consultar_esp}></input>
            <div className='output-char' id='output' style={{display: 'none'}}></div>
        </div>
        </>
    )
}

export default Characters;