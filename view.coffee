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
                padding: '0 15vw'
                background: 'beige'
            }
        >
            When I get a call, my phone _____.
        </div>
        <div
            style={
                height: '60vh'
                background: 'beige'
                display: 'flex'
                flexDirection: 'column'
                justifyContent: 'center'
                alignItems: 'center'
            }
        >
            <div
                style={
                    margin: '1.4vh 0'
                    height: '10vh'
                    padding: '0 5vmin'
                    width: '70vw'
                    fontSize: '4vh'
                    display: 'flex'
                    alignItems: 'center'
                    border: '0.4vmin solid #3c3930'
                    boxShadow: '0.8vmin 0.4vh 0 0 #a59a79'
                    background: '#e2ddc9'
                }
            >
                vibrates
            </div>
            <div
                style={
                    margin: '1.4vh 0'
                    height: '10vh'
                    width: '70vw'
                    padding: '0 5vmin'
                    fontSize: '4vh'
                    display: 'flex'
                    alignItems: 'center'
                    border: '0.4vmin solid #3c3930'
                    boxShadow: '0.8vmin 0.4vh 0 0 #a59a79'
                    background: '#e2ddc9'
                }
            >
                rings
            </div>
            <div
                style={
                    margin: '1.4vh 0'
                    padding: '0 5vmin'
                    height: '10vh'
                    width: '70vw'
                    fontSize: '4vh'
                    display: 'flex'
                    alignItems: 'center'
                    border: '0.4vmin solid #3c3930'
                    boxShadow: '0.8vmin 0.4vh 0 0 #a59a79'
                    background: '#e2ddc9'
                }
            >
                does nothing
            </div>
            <div
                style={
                    margin: '1.4vh 0'
                    padding: '0 5vmin'
                    height: '10vh'
                    width: '70vw'
                    fontSize: '4vh'
                    display: 'flex'
                    alignItems: 'center'
                    border: '0.4vmin solid #3c3930'
                    boxShadow: '0.8vmin 0.4vh 0 0 #a59a79'
                    background: '#e2ddc9'
                }
            >
                shuts off
            </div>
        </div>
        <div
            style={
                height: '10vh'
                background: 'beige'
            }
        >
        </div>
    </main>