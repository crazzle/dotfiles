# ADD JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

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
