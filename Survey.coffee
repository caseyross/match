import { h } from 'hyperapp'

export default -> (state, actions) ->
    item = state.survey.items[state.survey.current]
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
                fontSize: '3vh'
                color: '#666'
                display: 'flex'
                justifyContent: 'space-between'
                alignItems: 'center'
            }
        >
            <a
                onclick={->
                    actions.survey.back()
                }
                style={
                    visibility:
                        if state.survey.previous.length
                            'visible'
                        else
                            'hidden'
                    height: '5vh'
                    width: '20vw'
                    display: 'flex'
                    justifyContent: 'flex-start'
                    alignItems: 'center'
                }
            >
                back
            </a>
            <a
                style={
                    height: '5vh'
                    width: '20vw'
                    display: 'flex'
                    justifyContent: 'center'
                    alignItems: 'center'
                }
            >
                menu
            </a>
            <a
                onclick={->
                    actions.survey.skip()
                }
                style={
                    height: '5vh'
                    width: '20vw'
                    display: 'flex'
                    justifyContent: 'flex-end'
                    alignItems: 'center'
                }
            >
                skip
            </a>
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