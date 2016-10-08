set -l cmd1 "proxychains4"
set -l cmd2 "proxychains"

if command -s "$cmd1" > /dev/null
    set cmd $cmd1
else if command -s "$cmd2" > /dev/null
    set cmd $cmd2
else
    echo "Please install proxychains-ng to use pc and spc command."
    echo "Github repo of proxychains-ng: https://github.com/rofl0r/proxychains-ng"
end

function pc -w "$cmd" -V cmd
    eval "$cmd" $argv
end
function spc -w "$cmd" -V cmd
    eval sudo "$cmd" $argv
end
