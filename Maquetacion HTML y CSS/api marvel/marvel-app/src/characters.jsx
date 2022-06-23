import React from 'react'

function Characters(props) {
    return (
        <>
        <div className='container-characters' style={{visibility: props.showing}}>
            <h3>Personajes</h3>
        </div>
        </>
    )
}

export default Characters;