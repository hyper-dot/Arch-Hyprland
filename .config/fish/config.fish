if status is-interactive
    # Commands to run in interactive sessions can go here
    export PATH="/home/linux/.local/bin:$PATH" # local binaries
    export PATH="/home/linux/.detaspace/bin:$PATH" # dataspace binary
    export PATH="/home/linux/.yarn/bin/:$PATH" # yarn global binaries
    export PATH="/home/linux/.npm-packages/bin/:$PATH" #npm global binaries
    export PATH="/home/linux/.npm-global/bin/:$PATH" #npm global binaries
    export PATH="/home/linux/go/bin/:$PATH" # Golang binaries


    #Setting the editor variable
    set -x EDITOR /usr/bin/nvim
    set -x VISUAL /usr/bin/nvim
    set BROWSER /bin/google-chrome-stable

    # ANDROID
    export ANDROID_HOME="/opt/android-sdk"
    export PATH="$ANDROID_HOME/tools:$PATH"
    export PATH="$ANDROID_HOME/platform-tools/:$PATH"

    # Hugo 
    alias hs='hugo server --noHTTPCache -D'
    

    # Backup shortcut
    alias bku='bash ~/Public/dotfiles/backup.sh'
   
    # alias cat="bat"

    #Navigating files and dir
    alias ls='exa --icons'
    alias la='exa --icons -a'
    alias ll='exa -la -F -s=mod -r --icons --git --group-directories-first --git'
    alias lol='clear && fortune | cowsay -f tux | lolcat'

    # Pacman
    alias install="sudo pacman -S"
    alias update="sudo pacman -Syyu"
    alias clearCache="sudo pacman -Sc"

    # Clear Terminal
    alias cl="clear"
    
    # Alias for tmux
    alias t="tmux"
    alias ta="tmux attach"

    # Golang 
    alias gr="go run"
    alias gi="go install"
    alias rgo="okular ~/Documents/Programming-in-Go.pdf"

    # Alias for neovim 
    alias nv="nvim"
    alias nvc="cd ~/.config/nvim/ && nvim"

    # Finds file 
    alias fh="find ~/ -name $1" 

    # Git and github
    alias gla="git log --oneline --abbrev-commit --all --graph --decorate --color --pretty=format:'%C(yellow)%h%Creset -%C(red)%d%Creset %s %C(dim green)(%cr)'"
    alias gl="git log --oneline --decorate --date=short"
    alias gs='git status -sb'
    #Adding Git
    alias ga="git add ."
    alias lg="lazygit"
    alias gp="git push"
    alias gm="git commit -m"
    
    # Ranger
    alias r="ranger"

    # Btop
    alias btop="btop -t"

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

# pnpm
set -gx PNPM_HOME "/home/linux/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
