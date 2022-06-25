import React, { useEffect } from 'react'
import { useState } from 'react';
import { ReactDOM } from 'react';

function Characters(props) {
    const [output_count, setOut] = useState(<></>);

    const consultar_esp = async (query) =>{
        document.getElementById('output').style.display = 'grid';
        let url = `http://gateway.marvel.com/v1/public/characters?limit=100&nameStartsWith=${query.target.value}&ts=1000&apikey=c1877a4b5d3693afc04219bd658fe78c&hash=39a54346f077173d691ac33efe20ae09`
        setOut();
        if(query.target.value === ''){
            setOut([]);
        }
        else {
            let data;
            await fetch(url)
                .then(res => res.json()).then(data_res => {
                    data = data_res.data.results;
                    console.log(data);
                    data.map(value =>{
                        let ref_url = value.urls[0].url;
                        let img_src = value.thumbnail.path + '/standard_amazing.' + value.thumbnail.extension;
                        let name = value.name;
                        let description = value.description;
                        let div =  document.getElementById('output');
                        div.innerHTML += `
                            <div class='personaje'>
                                <a class='imagen-personaje' target='blank' href=${ref_url}>
                                    <img src=${img_src}></img>
                                </a>
                                <div class='info'>
                                    <h2 class='personaje'>${name}</h2>
                                    <p class='descripcion'>${description}</p>
                                </div>
                            </div>`})
                }).catch((err) => {
                    document.getElementById('output').innerHTML = `<h2>Personaje no encontrado</h2>
                    <p>Error: ${err}</p>`
                });
        }
    };

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