import { h, app } from 'hyperapp'

state =
    count: 0

actions =
    update:
        (value) ->
            (state) ->
                count: state.count + value
    
view = (state, actions) -> 
    <div>
        <h1>{state.count}</h1>
        <button onclick={-> actions.update -1}>-</button>
        <button onclick={-> actions.update 1}>+</button>
    </div>

app(state, actions, view, document.body)
