# Parent file to run
# all scripts which may generate some output that you want
# to display on the website.

dir = @__DIR__

"""
    genplain(s)

Small helper function to run some code and redirect the output (stdout) to a file.
"""
function genplain(s::String)
    open(joinpath(dir, "output", "$s.txt"), "w") do outf
        redirect_stdout(outf) do
            include(joinpath(dir, s * ".jl"))
        end
    end
end

# output

genplain("script1")

# plots

include("scrip2.jl")
