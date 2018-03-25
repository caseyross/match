import { h } from 'hyperapp'

export default () -> (state, actions) ->
    item = state.survey.items[0]
    <main
        style={
            background: 'beige'
        }
    >
        <div
            style={
                height: '10vh'
            }
        >
        </div>
        <div
            style={
                height: '20vh'
                padding: '0 15vw'
            }
        >
            {item.p}
        </div>
        <ul
            style={
                height: '60vh'
                display: 'flex'
                flexDirection: 'column'
                justifyContent: 'center'
                alignItems: 'center'
            }
        >
            {Answer r for r in item.rs}
        </ul>
        <div
            style={
                height: '10vh'
            }
        >
        </div>
    </main>

Answer = (x) ->
    <li
        style={
            margin: '1.4vh 0'
            height: '10vh'
            width: '70vw'
            padding: '0 5vmin'
            fontSize: '4vh'
            background: '#e2ddc9'
            border: '0.4vmin solid #3c3930'
            boxShadow: '0.8vmin 0.4vh 0 0 #a59a79'
            display: 'flex'
            alignItems: 'center'
        }
    >
        {x}
    </li>