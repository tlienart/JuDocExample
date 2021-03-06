# Example site using JuDoc.jl

The aim of this repository is to show a simple site which uses [JuDoc.jl](https://github.com/tlienart/JuDoc.jl) that you can start from to become familiar with JuDoc and, hopefully, build your own website.

**Note**: at this point JuDoc is very much a prototype, so it's very likely you'll encounter bugs or issues, hopefully this still gives a feeling of what JuDoc may be able to do.

## Quickstart

To get started:

1. download / fork / clone this repository somewhere appropriate: `git clone https://github.com/tlienart/JuDocExample.git`,
2. make sure you have [Julia 0.7](https://julialang.org) or above and install JuDoc with `] add https://github.com/tlienart/JuDoc.jl`,
3. make sure you have browser-sync which you can install via `npm`: `npm install -g browser-sync` this will allow you to live preview the changes in your browser,
4. `cd` to the folder containing the site (if you haven't changed anything it is named `JuDocExample`), and either run `julia -e "using JuDoc; serve()"` or start Julia and run `using JuDoc; serve()`. A couple of seconds later and JuDoc will indicate that your local files are being served and changes will be live-previewed. (⭒)
5. open a browser at `http://localhost:8000/` you should see the example page
6. start modifying `JuDocExample/src/index.md`, you should see the effect applied directly in your browser.
