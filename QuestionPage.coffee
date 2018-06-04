import { h } from "hyperapp"

export default ({
	question,
	navigateTo
}) ->
	<main>
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
					visibility:
						if Math.random() > 0.5
							"visible"
						else
							"hidden"
					margin: "-2vh"
					padding: "2vh"
					cursor: "pointer"
				}
			>
				undo
			</a>
			<a
				style={
					margin: "-2vh"
					padding: "2vh"
					cursor: "pointer"
				}
				onclick={-> navigateTo("home")}
			>
				home
			</a>
			<a
				style={
					margin: "-2vh"
					padding: "2vh"
					cursor: "pointer"
				}
			>
				skip
			</a>
		</nav>
		<header
			style={
				height: "20vh"
				margin: "0 10vw"
			}
		>
			{question.q}
		</header>
		<menu
			style={
				height: "70vh"
				position: "relative"
				overflow: "hidden"
			}
		>
			{
				for type, text of question.r
					Response type, text
			}
		</menu>
	</main>

Response = (type, text) ->
	<button
		style={
			height: switch type
				when "n", "y" then "60vw"
				else "40vw"
			width: switch type
				when "n", "y" then "60vw"
				else "40vw"
			fontSize: "3vh"
			background: "#eee"
			borderRadius: "50%"
			display: "flex"
			justifyContent: "center"
			alignItems: "center"
			position: "absolute"
			bottom: switch type
				when "hn", "hy", "m" then "40vw"
				else "-20vw"
			left: switch type
				when "n" then "-20vw"
				when "y", "hy" then "60vw"
				when "m" then "30vw"
				else ""
		}
	>
		{
			if text
			then text
			else switch type
				when "y" then "yes"
				when "n" then "no"
				when "m" then "maybe"
		}
	</button>