#set page(width: 15cm, height: auto)

#import "@preview/smartaref:0.1.0"

#let cref = smartaref.cref.with(sort: true)
#let Cref = smartaref.Cref.with(sort: true)

// Highlight links.
#show link: set text(fill: blue)
#show ref: set text(fill: blue)

// Set heading numbering style.
#set heading(numbering: "1.1")

// === [ figure example ] ======================================================

#let example-fig = rect(fill: aqua)

= Figures example

`ref`: See @fig-qux, @fig-foo, @fig-baz and @fig-bar.

#emph[`sort: false`] \
`cref`: See #cref(sort: false)[@fig-qux @fig-foo @fig-baz @fig-bar].

#emph[`sort: true`] \
`cref`: See #cref[@fig-qux @fig-foo @fig-baz @fig-bar].

#emph[`sort: true, compact: true`] \
`cref`: See #cref(compact: true)[@fig-qux @fig-foo @fig-baz @fig-bar].

#grid(
	columns: 4,
	gutter: 1.5em,
	[#figure(
		example-fig,
		caption: [foo],
	) <fig-foo>],
	[#figure(
		example-fig,
		caption: [bar],
	) <fig-bar>],
	[#figure(
		example-fig,
		caption: [baz],
	) <fig-baz>],
	[#figure(
		example-fig,
		caption: [qux],
	) <fig-qux>],
)

// === [ sections example ] ====================================================

= Sections example
<sec-sections-example>

`ref`: See @sec-subsection-three, @sec-sections-example, @sec-subsection-two and @sec-subsection-one.

#emph[`sort: false`] \
`cref`: See #cref(sort: false)[@sec-subsection-three @sec-sections-example @sec-subsection-two @sec-subsection-one].

#emph[`sort: true`] \
`cref`: See #cref[@sec-subsection-three @sec-sections-example @sec-subsection-two @sec-subsection-one].

== Subsection one
<sec-subsection-one>

#lorem(10)

== Subsection two
<sec-subsection-two>

#lorem(15)

== Subsection three
<sec-subsection-three>

#lorem(20)

// === [ equations example ] ===================================================

// Set equation numbering style.
#set math.equation(numbering: "(1)")

= Equations example

`ref`: See @eq-de-moivres-formula, @eq-pythagoras and @eq-eulers-identity.

#emph[`sort: false`] \
`cref`: See #cref(sort: false)[@eq-de-moivres-formula @eq-pythagoras @eq-eulers-identity].

#emph[`sort: true`] \
`cref`: See #cref[@eq-de-moivres-formula @eq-pythagoras @eq-eulers-identity].

$ abs(z) = sqrt(x^2 + y^2) $ <eq-pythagoras>

$ e^(i pi) = -1 $ <eq-eulers-identity>

$ (cos x + i sin x)^n = cos(n x) + i sin(n x) $ <eq-de-moivres-formula>
