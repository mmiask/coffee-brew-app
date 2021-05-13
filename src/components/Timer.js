import React from 'react'
import ms from '../../node_modules/pretty-ms'

// provide time in seconds
const brewingTime = 120;

export default class Timer extends React.Component {
    constructor(props){
        super();
        this.startTimer = this.startTimer.bind(this)
        this.state = {
            time: 0,
            start: 0,
        }
    }

    startTimer(){
        this.setState({
            time: this.state.time,
            start: Date.now()
        })
        this.timer = setInterval(() => {
            // TODO: fix timer accuracy
            if(this.state.time > parseInt(brewingTime*1000)){
                clearInterval(this.timer);
                return;
            }
            this.setState({time: Date.now() - this.state.start})
        }, 1)
    }
    
    render () {
        let start = (this.state.time === 0) ? <button onClick={this.startTimer}>start</button> : null
        return (
            <div>
                <h1>Brewing time: {(this.state.time === 0) ? null : ms(this.state.time)}</h1>
                {start}
            </div>
        )
    }
}
