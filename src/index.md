@def title = "JuDoc Example"
@def hascode = true
<!-- by default hasmath=true, hascode=false, you can change this in config
by setting hasmath = false for instance and just setting it to true where
appropriate -->

# JuDoc Example

This is a simple example to test some of the features that [JuDoc](https://github.com/tlienart/JuDoc.jl) offers.
Modify this at will to experiment!

Ps: if you want to modify the header or footer, adjust the files in `src/_html_parts/`.

## The base with Markdown

The [standard markdown syntax](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) can be used such as titles using `#`, lists:

* element with **bold**
* element with _emph_

or code-blocks `inline` or with highlighting (note the `@def hascode = true` in the source to allow [highlight.js](https://highlightjs.org/) to do its job):

```julia
abstract type Point end
struct PointR2{T<:Real} <: Point
    x::T
    y::T
end
struct PointR3{T<:Real} <: Point
    x::T
    y::T
    z::T
end
len(p::T) where T<:Point = sqrt(sum(getfield(p, η)^2 for η ∈ fieldnames(T)))
```

You can also quote stuff

> You must have chaos within you to ...

(can you complete the quote? [here's the rest](https://www.goodreads.com/quotes/7147-you-must-have-chaos-within-you-to-give-birth-to)) or have tables:

| English         | Mandarin   |
| --------------- | ---------- |
| chairman        | 维尼熊      |
| winnie the pooh | 主席        |

etc.
Note that you may have to do a bit of CSS-styling to get these elements to look the way you want them.

## Basic JuDoc extensions

### Divs

It may be useful to get a quick way to make part of your document an element of a div that you can style as you wish.
For instance, you could want a yellow background behind some text.

@@colbox-yellow
Here we go! (this is styled in the css sheet with name "colbox-yellow").
@@

This is just a div so you can put this wherever you like and locally style your text.

### LaTeX and Maths

Essentially three things are immitated from LaTeX

* you can introduce definition of things that recur using `\newcommand`
* you can have hyper-references with `\eqref`, `\cite`, ...
* you can show maths (via KaTeX)

The definitions can be introduced in the page or in the `config.md` (in which case they're available everywhere).
For instance, `\scal` and `\R` were defined in the config file and can directly be used whereas we define `\E` below:

\newcommand{\E}{\mathbb E}

now we can write something like

$$ \E[\scal{f, g}] \quad\!\!=\quad\!\! \mu \,\in\,\R \label{equation blah} $$

since we've given it the label `\label{equation blah}`, we can refer it like so: \eqref{equation blah} which can be convenient for pages that are full of equations.

In a similar vein you can cite stuff \citep{noether15}.

**Note**: the LaTeX commands you define can also incorporate standard markdown (though not in a math environment) so for instance let's define a silly `\bolditalic` command.

\newcommand{\bolditalic}[1]{_**!#1**_} <!--_-->

there \bolditalic{we go}. Something is worth nothing here, for most commands you will use `#1`, in order to reduce the amount of headache, this introduces a whitespace on the left of whatever is inserted which, often, changes nothing visible (e.g. in a math settings).
However there may be situations where you do not want this to happen and you know that the insertion will not clash with the command.
In that case, use `!#1` which will not introduce that whitespace.
Let's give an example:

\newcommand{\pathwith}[1]{`/usr/local/bin/#1`}
\newcommand{\pathwithout}[1]{`/usr/local/bin/!#1`}

* with: \pathwith{script.jl}, there's a whitespace you don't want 🚫
* without: \pathwithout{script.jl} here there isn't ✅

### Raw HTML

You can include raw HTML by just surrounding a block with `~~~`.
Not much more to add.
This may be useful if (say) you want a photo next to a text in a specific way.

~~~
<div class="row">
  <div class="container">
    <img class="left" src="assets/index/profpic.jpg">
    <p>
    Marine iguanas are truly splendid creatures. They're found on the Gálapagos islands, have skin that basically acts as a solar panel, can swim and may have the ability to adapt their body size depending on whether there's food or not.
    </p>
    <p>
    Evolution is cool.
    </p>
    <div style="clear: both"></div>      
  </div>
</div>
~~~

## References (not really)

* \biblabel{noether15}{Noether (1915)} **Noether**,  Körper und Systeme rationaler Funktionen, 1915.
