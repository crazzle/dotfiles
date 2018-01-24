export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
CLICOLOR=1

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# add SPARK
export SPARK_HOME=/Users/markkeinhorster/infrastructure/spark-2.2.0-bin-hadoop2.7
export SPARK_LOCAL_IP=127.0.0.1
export PYSPARK_DRIVER_PYTHON=python #jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="" #'notebook'                                

export PATH=/Users/markkeinhorster/infrastructure/spark-2.2.0-bin-hadoop2.7/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin
alias ipython="python -m IPython"
function mkcd() { mkdir $1; cd $1;}
function gacp() { git add --all; git commit -m "$1"; git push; }
function docosfull() { docker-compose stop $1; docker-compose build $1; docker-compose up -d $1; }


# MacPorts Installer addition on 2018-01-16_at_15:16:26: adding an appropriate PATH variable for use with MacPorts.
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

