# Example site using JuDoc.jl

The aim of this repository is to show a simple site which uses [JuDoc.jl](https://github.com/tlienart/JuDoc.jl) that you can start from to become familiar with JuDoc and, hopefully, build your own website.

To get started:

1. download / fork / clone this repository somewhere appropriate: `git clone https://github.com/tlienart/JuDocExample.git`
2. make sure you have [Julia 0.7](https://julialang.org) or above and install JuDoc with `] add https://github.com/tlienart/JuDoc.jl`
3. make sure you have browser-sync which you can install via `npm`: `npm install -g browser-sync` this will allow you to live preview the changes
4. `cd` to the folder containing the site (if you haven't change anything it's named `JuDocExample`), and run `julia -e "using JuDoc; JuDoc.serve()"` (you can add an alias for this in your `.bash_profile` file if you want)
5. open a browser at `http://localhost:8000/` you should see the example page
6. start by modifying `JuDocExample/src/index.md`, you should see the effect applied directly in your browser.
