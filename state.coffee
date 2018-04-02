export default
    survey:
        previous: [Math.floor (Math.random() * 5)]
        current: Math.floor (Math.random() * 5)
        next: Math.floor (Math.random() * 5)
        items: [
            {
                p: 'When I get a call, my phone _____.'
                rs: [
                    'rings'
                    'vibrates'
                ]
            }
            {
                p: 'Do you believe there is a higher power?'
                rs: [
                    'yes'
                    'maybe'
                    'no'
                ]
            }
            {
                p: 'Do you want to have children?'
                rs: [
                    'yes, soon'
                    'yes, later'
                    'maybe'
                    'no, never'
                ]
            }
            {
                p: 'Do you like horror movies?'
                rs: [
                    'yes'
                    'no'
                ]
            }
            {
                p: 'I prefer to shop _____.'
                rs: [
                    'in physical stores'
                    'online'
                ]
            }
        ]