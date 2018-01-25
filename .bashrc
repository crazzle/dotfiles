export SHELL=$PREFIX/bin/sh

export PATH=/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/home/.vimpkg/bin

export PATH=/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/home/.vimpkg/bin:/data/data/com.termux/files/home/.vimpkg/bin

# COLORING AND POWERLINE-SHELL
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}
if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
CLICOLOR=1
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

function mkcd() { mkdir $1; cd $1;}
function gacp() { git add --all; git commit -m "$1"; git push; }
function syncwiki() { cd ~/vimwiki; git pull; cd -; }
function updatewiki() { cd ~/vimwiki; gacp "update wiki"; cd -; }
