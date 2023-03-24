export GPG_TTY=(tty)

if status is-interactive
    alias rm "rm -i"

    zoxide init fish | source
    starship init fish --print-full-init | source
end
