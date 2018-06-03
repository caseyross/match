import questions from './questions.coffee'

export default
    questions: questions
    survey:
        previous: [Math.floor (Math.random() * 5)]
        current: Math.floor (Math.random() * 5)
        next: Math.floor (Math.random() * 5)