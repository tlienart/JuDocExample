# Example site using JuDoc.jl

The aim of this repository is to show a simple site which uses [JuDoc.jl](https://github.com/tlienart/JuDoc.jl) that you can start from to become familiar with JuDoc and, hopefully, build your own website.

**Note**: at this point JuDoc is very much a prototype, so it's very likely you'll encounter bugs or issues, hopefully this still gives a feeling of what JuDoc may be able to do.

To get started:

1. download / fork / clone this repository somewhere appropriate: `git clone https://github.com/tlienart/JuDocExample.git`
2. make sure you have [Julia 0.7](https://julialang.org) or above and install JuDoc with `] add https://github.com/tlienart/JuDoc.jl`
3. make sure you have browser-sync which you can install via `npm`: `npm install -g browser-sync` this will allow you to live preview the changes in your browser
4. `cd` to the folder containing the site (if you haven't changed anything it's named `JuDocExample`), and run `julia -e "using JuDoc; JuDoc.serve()"` (⭒)
5. open a browser at `http://localhost:8000/` you should see the example page
6. start by modifying `JuDocExample/src/index.md`, you should see the effect applied directly in your browser.

**Notes**

* (⭒) if you end up using JuDoc a bit, it quickly becomes helfpul to define an alias in your bash profile of the form

```
alias jd="julia -e \"using JuDoc; JuDoc.serve()\""
```
