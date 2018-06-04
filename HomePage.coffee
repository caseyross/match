import { h } from "hyperapp"

export default ({
	navigateTo
}) ->
	<main>
		<div
			style={
				height: "90vh"
			}
		/>
		<nav
			style={
				height: "10vh"
				margin: "0 10vw"
				fontSize: "3vh"
				color: "#666"
				display: "flex"
				justifyContent: "space-between"
				alignItems: "center"
			}
		>
			<a
				style={
					margin: "-2vh"
					padding: "2vh"
					cursor: "pointer"
				}
				onclick={-> navigateTo("question")}
			>
				match questions
			</a>
			<a
				style={
					margin: "-2vh"
					padding: "2vh"
					cursor: "pointer"
				}
				onclick={-> navigateTo("user")}
			>
				my info
			</a>
		</nav>
	</main>