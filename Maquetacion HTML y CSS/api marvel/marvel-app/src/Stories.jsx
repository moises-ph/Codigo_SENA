import React from 'react'

function Stories(props) {
    return (
        <div className='container-stories' style={{visibility: props.showing}}>
            <h3>Stories</h3>
        </div>
    )
}

export default Stories