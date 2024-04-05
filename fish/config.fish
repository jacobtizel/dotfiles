if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
abbr -a -- cosc "cd /mnt/c/Users/tizre/Documents/UBC/COSC\ stuff/"
abbr -a -- moosft "fortune -n 200 -s | cowsay -f moose | lolcat"
abbr -a -- moosfort "fortune -n 200 -l | cowsay -f moose | lolcat"
set -gx EDITOR nvim 

abbr -a -- gco git\ checkout

# do not delete / or prompt if deleting more than 3 files at a time #
abbr -a -- rm "rm -I --preserve-root"
 
# confirmation #
abbr -a -- mv "mv -i"
abbr -a -- cp "cp -i"
abbr -a -- ln "ln -i"

abbr -a --position anywhere tz "/mnt/c/Users/tizre/"
abbr -a --position anywhere firefoxwsl "'/mnt/c/Program Files/Mozilla Firefox/firefox.exe'"

# set -gx BROWSER 'explorer.exe'
set -gx BROWSER "powershell.exe /C start"

if status --is-interactive
    fortune -n 200 -s | cowsay -f moose | lolcat
end
