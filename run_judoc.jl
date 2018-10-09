using JuDoc

const SINGLE_PASS = false
const FOLDER_PATH = "/Users/tlienart/Desktop/JuDocExample/"

jd() = begin
    if SINGLE_PASS
        ec = JuDoc.judoc()
    else
        run(`bash -c "browser-sync start -s -f $FOLDER_PATH --no-notify --logLevel silent --port 8000 --no-open &"`)
        println("Serving at localhost:8000")
        # this is blocking, when interrupted, it also kills the background proc
        ec = JuDoc.judoc(single_pass=false, verb=true, clear_out_dir=true);
    end
end

jdpub() = begin
    return run(`bash -c "git add -A && git commit -m \"jd-update\" && git push > /dev/null"`, wait=false)
end

jd()
