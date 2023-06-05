if status is-interactive
    # Commands to run in interactive sessions can go here
    export PATH="/home/linux/.deta/bin:$PATH"
    export PATH="/home/linux/.local/bin:$PATH"
    export PATH="/home/linux/.yarn/bin/:$PATH"
    export PATH="/home/linux/.npm-global/bin/:$PATH"
    
    #Navigating files and dir
    alias ls='exa --icons'
    alias la='exa --icons -a'
    alias ll='exa -la -F -s=mod -r --icons --git --group-directories-first --git'
    alias lol='clear && fortune | cowsay -f tux | lolcat'

    # Colorpicker
    function cpicker
      grim -g "$(slurp -p)" -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:-
    end

    # Pacman
    alias install="sudo pacman -S"
    alias update="sudo pacman -Syyu"
    alias clearCache="sudo pacman -Sc"

    # Clear Terminal
    alias cl="clear"
    
    # Alias for tmux
    alias t="tmux"
    alias ta="tmux attach"


    # Golang for tmux
    alias gr="go run"
    alias gi="go install"

    # Alias for neovim 
    alias nv="nvim"
    alias nvc="cd ~/.config/nvim/ && nvim"

    # Finds file 
    alias fh="find ~/ -name $1" 

    # Git and github
    alias gl="git log --oneline --abbrev-commit --all --graph --decorate --color --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr)'"
    alias gs='git status -sb'
    #Adding Git
    alias ga="git add ."
    alias lg="lazygit"
    alias gp="git push"
    alias gm="git commit -m"
    
    # Ranger
    alias r="ranger"

    ## Confirm before I overwrite something.
    alias cp='cp -i'
    alias mv='mv -i'
    alias rm='rm -i'
    
    ## Don't DELETE! Put it in the Trash, so I can restore later.
    alias trash='mv --force -t ~/.local/share/Trash '

    # Open diffrent config files in lunarvim
    alias hl='lvim ~/.config/hypr/hyprland.conf'
    alias fic='lvim ~/.config/fish/config.fish'
    
end
