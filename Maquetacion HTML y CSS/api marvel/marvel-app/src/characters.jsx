import React, { useEffect } from 'react'
import { useState } from 'react';

function Characters(props) {
    const [output, setOut] = useState();
    const [stories_html, setStories] = useState();
    const [sotires_query, setQuerySt] = useState();

    const consultar_esp = async (query) =>{
        let data;
        await fetch(`http://gateway.marvel.com/v1/public/characters?name=hulk&ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09`)
            .then(res => res.json()).then(data_res => {
                data = data_res.data.results[0];
            });
        setQuerySt(data.stories.items);
        console.log(data);

        setOut(
            <>
            <a className='imagen-personaje' target='blank' href={data.urls[0].url}>
                <img src={data.thumbnail.path + '/portrait_incredible.' + data.thumbnail.extension}></img>
            </a>
            <div className='info'>
                <h2 className='personaje'>{data.name}</h2>
                <p className='descripcion'>{data.description}</p>
                <ul id='stories-li'>{stories_html}</ul>
            </div>
            </>
        );
        document.getElementById('output').style.display = 'flex';
    };

    const consultar_abc = async () =>{
        fetch('')
    }

    return (
        <>
        <div className='container-characters' style={{visibility: props.showing}}>
            <h3>Personajes</h3>
            <button onClick={consultar_esp}>Consultar</button>
            <div className='output-char' id='output' style={{display: 'none'}}>{output}</div>
        </div>
        </>
    )
}

export default Characters;