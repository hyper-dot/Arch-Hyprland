if status is-interactive
    # Commands to run in interactive sessions can go here
    export PATH="/home/linux/.deta/bin:$PATH"
    export PATH="/home/linux/.local/bin:$PATH"
    
    #Navigating files and dir
    alias ls='exa --grid --icons'
    alias ll='exa -la -F --icons --git --group-directories-first --git'
    alias la='exa --icons --grid --all'
    alias lol='clear && fortune | cowsay -f tux | lolcat'

    # Htop and btop
    alias htop='btop'

    # Pacman
    alias install="sudo pacman -S"
    alias update="sudo pacman -Syyu"
    alias clearCache="sudo pacman -Sc"

    # Clear Terminal
    alias cl="clear"

    # Alias for lvim 
    alias lv="lvim"

    # Finds file 
    alias fh="find ~/ -name $1" 

    # Git and github
    alias gl="git log --oneline --abbrev-commit --all --graph --decorate --color --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr)'"
    alias gs='git status -sb'
    #Adding Git
    alias ga="git add ."
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


end

