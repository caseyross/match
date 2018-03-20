import { h } from 'hyperapp'

export default (state, actions) ->
    <div>
        <h1>{state.count}</h1>
        <button onclick={-> actions.update -2}>-</button>
        <button onclick={-> actions.update 1}>+</button>
    </div>