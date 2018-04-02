import { h } from 'hyperapp'

export default -> (state, actions) ->
    item = state.survey.items[0]
    <main 
        style={
            padding: '0 10vw'
        }
    >
        <div
            style={
                height: '40vh'
                paddingTop: '10vh'
                paddingBottom: '8vh'
            }
        >
            {item.p}
        </div>
        <menu
            style={
                height: '50vh'
                display: 'flex'
                flexDirection: 'column'
            }
        >
            {Answer r for r in item.rs}
        </menu>
        <nav
            style={
                height: '10vh'
                color: '#666'
                display: 'flex'
                fontSize: '3vh'
                justifyContent: 'space-between'
                alignItems: 'center'
            }
        >
            <a>back</a>
            <a>menu</a>
            <a>skip</a>
        </nav>
    </main>

Answer = (x) ->
    <button
        style={
            margin: '1.25vh 0'
            height: '10vh'
            padding: '0 5vmin'
            fontSize: '4vh'
            fontWeight: 700
            background: '#eee'
            borderRadius: '1vh'
            display: 'flex'
            alignItems: 'center'
        }
    >
        {x}
    </button>