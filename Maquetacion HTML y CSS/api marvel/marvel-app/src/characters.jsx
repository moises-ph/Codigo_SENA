import React, { useEffect } from 'react'
import { useState } from 'react';

function Characters(props) {
    const [output, setOut] = useState();
    const [stories_html, setStories] = useState();

    const consultar_esp = async (query) =>{
        let stories;
        let sotires_name;
        let stories_elem;
        let data;
        await fetch(`http://gateway.marvel.com/v1/public/characters?name=hulk&ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09`)
            .then(res => res.json()).then(data_res => {
                data = data_res.data.results[0];
                console.log(data_res);
            });
        stories = data.stories.items;
        stories.map( async item =>{
            await fetch(item.resourceURL + '?ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09')
                .then(res => res.json()).then(data => stories_elem = data.data.results[0]);
            setStories(<li>
                <h4>{stories_elem.tittle}</h4>
            </li>);
        })
        console.log(data);
        setOut(
            <>
            <a className='imagen-personaje' target='blank' href={data.urls[0].url}>
                <img src={data.thumbnail.path + '/portrait_incredible.' + data.thumbnail.extension}></img>
            </a>
            <div className='info'>
                <h2 className='personaje'>{data.name}</h2>
                <p className='descripcion'>{data.description}</p>
                <ul>{stories_html}</ul>
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