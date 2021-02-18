---
title: Example document
bibliography: bibliography.bib
citation-style: https://www.zotero.org/styles/ieee
theoremnos-names:
 - {id: thm, name: Theorem}
 - {id: lem, name: Lemma}
theoremnos-cleveref: True
theoremnos-shared-counter: False
xnos-capitalise: True
---

\newcommand{\E}{\mathbb{E}}

# Text

Special characters: śćżźąęńł  
Inline $x=2$ math
$$
    \E[x]=2
$${#eq:math}
and standalone equations with numbering (@eq:math).

 * bullets
   - with nesting
 * are nice
 * fsadklj

And so are references [@ntk_paper], [@distill_gp]

# Figures
With captions and numbered references (@fig:figure), of course.

![A plot with three decaying traces.
  Decaying errors are nice](figure.png){#fig:figure width=70%}


# Theorem environments

Let's start with something easy:

[**Pythagoras's Theorem**]{#thm:pythagoras}
: Given a right triangle with hypotenuse $c$, we have
  $$c^2 = a^2 + b^2$$

[**Pumping**]{#lem:pumping}
: If it's good, it can be made better, especially in Computer Science.

As we see in @thm:pythagoras, triangles are cool and can be made better with @lem:pumping.