# Parent file to run
# all scripts which may generate some output that you want
# to display on the website.

dir = @__DIR__

for script in ["script1.jl", ]
    fn = splitext(script)[1]
    open(joinpath(dir, "output", "$(fn)_res.txt"), "w") do io
        redirect_stdout(io) do
            include(joinpath(dir, script))
        end
    end
end
