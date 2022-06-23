import React from 'react'

function Comics(props) {
    return (
        <div className='container-stories' style={{visibility: props.showing}}>
            <h3>Comics</h3>
        </div>
    )
}

export default Comics
