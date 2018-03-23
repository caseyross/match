import { h } from 'hyperapp'

export default (state, actions) ->
    <main>
        <div
            style={
                height: '10vh'
                background: 'beige'
            }
        >
        </div>
        <div
            style={
                height: '20vh'
                background: 'beige'
            }
        >
            <div
                style={
                    height: '20vh'
                    width: '80vw'
                    background: 'gray'
                }
            >
            </div>
        </div>
        <div
            style={
                height: '60vh'
                background: 'beige'
                display: 'flex'
                flexDirection: 'column'
                justifyContent: 'center'
                alignItems: 'flex-end'
            }
        >
            <div
                style={
                    margin: '2vh 0'
                    height: '10vh'
                    width: '80vw'
                    background: 'forestgreen'
                }
            >
            </div>
            <div
                style={
                    margin: '2vh 0'
                    height: '10vh'
                    width: '80vw'
                    background: 'forestgreen'
                }
            >
            </div>
            <div
                style={
                    margin: '2vh 0'
                    height: '10vh'
                    width: '80vw'
                    background: 'forestgreen'
                }
            >
            </div>
        </div>
        <div
            style={
                height: '10vh'
                background: 'lightgray'
            }
        >
        </div>
    </main>