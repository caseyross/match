import { h } from "hyperapp"
import HomePage from "./HomePage"
import QuestionPage from "./QuestionPage"
import UserPage from "./UserPage"

export default (state, actions) ->
	switch state.page
		when "home"
			<HomePage
				navigateTo={actions.navigateTo}
			/>
		when "question"
			<QuestionPage
				question={state.questions[0]}
				navigateTo={actions.navigateTo}
			/>
		when "user"
			<UserPage />
		else
			<div>Error!</div>