set -g fish_vi_force_cursor 1
if status is-interactive
end

export LSCOLORS="exfxcxdxbxegedabagacad"
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

set fzf_preview_dir_cmd exa --all --color=always

export EXA_COLORS="reset"

set fish_cursor_default block blink
set fish_cursor_insert line blink
set fish_cursor_replace_one underscore blink
set fish_cursor_replace underscore blink
set fish_cursor_visual block blink

# function fish_vi_cursor; end

abbr --add g git

alias vi='nvim'
# alias config='/usr/local/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias kitty-install='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'
alias kitty-install-nightly='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin installer=nightly'

set -gx EDITOR nvim

# set -gx TERM xterm-256color

set -gx NEOVIDE_FRAME Buttonless

set -gx XDG_CONFIG_HOME $HOME/.config


#set -gx JAVA_HOME $(/usr/bin/java)
#set -gx ANDROID_HOME $HOME/Library/Android/sdk
#set -p PATH $ANDROID_HOME/emulator
#set -p PATH $ANDROID_HOME/tools
#set -p PATH $ANDROID_HOME/tools/bin
#set -p PATH $ANDROID_HOME/platform-tools
set -gx NNN_BMS 'h:~;c:~/.config;d:~/Documents;D:~/Downloads'
set -gx NNN_PLUG 'p:preview-tui;y:yoink'
set -gx NNN_FIFO '/tmp/nnn.fifo'
set -gx NNN_FCOLORS '000004000000000200000000'

set -gx CC '/usr/bin/CC'

fish_add_path -g ~/.local/bin

bind -M default \cP history-search-backward
bind -M default \cN history-search-forward

bind -M insert \cP history-search-backward
bind -M insert \cN history-search-forward
bind -M insert -k nul accept-autosuggestion

bind -M insert \cF forward-char
bind -M insert \cB backward-char

bind -M insert \cA beginning-of-line
bind -M insert \cE end-of-line

# source ~/github/tokyonight.nvim/extras/fish/tokyonight_storm.fish

# zoxide init fish | source
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience



# Created by `pipx` on 2023-03-15 00:57:37
set PATH $PATH /Users/edwarmv/.local/bin
