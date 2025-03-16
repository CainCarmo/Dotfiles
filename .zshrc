# -> Starship
#: Init
if [ -z "$ZSH_INITIALIZED" ]; then
  eval "$(starship init zsh)"

  export ZSH_INITIALIZED=true
fi

#: Configurations
[[ "$TERM_PROGRAM" == "vscode" ]] && eval "$(starship init zsh)"

# -> Environments
#: ZSH
export ZSH="$HOME/.oh-my-zsh"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export FASTFETCH_HOME="$HOME/.config/fastfetch"

# -> Configurations
#: oh my zsh
CASE_SENSITIVE="true"
ENABLE_CORRECTION="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="false"

plugins=(
  git
  docker
  docker-compose
  emoji
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-history-substring-search
)

# -> Imports
#: Oh My Zsh Plugins
source "$ZSH/custom/plugins/zsh-completions/src/"
source "$ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh"

##: Init
source "$ZSH/oh-my-zsh.sh"

# -> Aliases
#: Folders
alias conf="cd $HOME/.config/"
alias docs="cd $HOME/Documents/"
alias down="cd $HOME/Downloads/"
alias imgs="cd $HOME/Pictures/"
alias proj="cd $HOME/.dev/@Projects/"
alias stud="cd $HOME/.dev/@Study/"
alias wpps="cd $HOME/.wallpapers/"

#: Utils
alias kn="nvim"
alias ls="eza -lha --icons=auto --sort=name --group-directories-first"
alias bat="bat --style=auto"
alias ff="clear && fastfetch -c $HOME/.config/fastfetch/config.jsonc"
alias mf="clear && fastfetch -c $HOME/.config/fastfetch/mini.jsonc"

#: Helpers
alias c="clear"
alias :q="exit"
alias grubcfg="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias mirrorup="sudo reflector --verbose --latest 20 --sort rate --protocol https --age 24 --save /etc/pacman.d/mirrorlist"
alias sddmprev="sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/sddm-astronaut-theme/"
