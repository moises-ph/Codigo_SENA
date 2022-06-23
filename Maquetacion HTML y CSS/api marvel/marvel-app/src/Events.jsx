import React from 'react'

function Events(props) {
    return (
        <div className='container-events' style={{visibility: props.showing}}>
            <h3>Events</h3>
        </div>
    )
}

export default Events