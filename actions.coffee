export default
    survey:
        back:
            (value) ->
                (state) ->
                    if state.previous.length > 1
                        [...previous, current] = state.previous
                    else
                        [current] = state.previous
                        previous = []
                    {
                        previous: previous
                        current: current
                        next: state.current
                    }
        skip:
            (value) ->
                (state) ->
                    previous = [...state.previous, state.current]
                    next = Math.floor (Math.random() * state.items.length)
                    {
                        previous: previous
                        current: state.next
                        next: next
                    }