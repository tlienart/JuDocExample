# Example site using JuDoc.jl

The aim of this repository is to show a simple site which uses [JuDoc.jl](https://github.com/tlienart/JuDoc.jl) that you can start from to become familiar with JuDoc and, hopefully, build your own website.

To get started:

1. download / fork / clone this repository somewhere appropriate: `git clone https://github.com/tlienart/JuDocExample.git`
2. make sure you have [Julia 0.7](https://julialang.org) or above and install JuDoc with `] add https://github.com/tlienart/JuDoc.jl`
3. make sure you have browser-sync which you can install via `npm`: `npm install -g browser-sync` this will allow you to live preview the changes
4. `cd` to the folder containing the site (if you haven't change anything it's named `JuDocExample`), and run `julia -e "using JuDoc; JuDoc.serve()"` (you can add an alias for this in your `.bash_profile` file if you want)
5. in `config.md` change the `@def baseurl` with `@def baseurl = http://localhost:8000/` (†)
6. open a browser at `http://localhost:8000/` you should see the example page
7. start by modifying `JuDocExample/src/index.md`, you should see the effect applied directly in your browser.

**Note**: for step (5) this is only needed to differentiate between this site being ran locally and on the server. This stems from handling relative paths on GitHub with a _project page_.
To keep things simple: relative paths are straightforward for your home page (in my case `tlienart.github.io`), but for project page, the parent site is `tlienart.github.io/JuDocExample`.
In order for relative links to refer to the correct base URL (i.e. with `JuDocExample` in this case), I need to add these `{{fill baseurl}}` in `src/_html_parts/head.html`.

Long story short, you **do not need this** if your base URL is simply `username.github.io` or something like `yourname.com`.
In that case you can

1. remove the `@def baseurl ...` line in `config.md`
2. remove the `{{fill baseurl}}`

In fact, you can even do this for the example here, the only reason it's not done is so that the website could be displayed online too.
