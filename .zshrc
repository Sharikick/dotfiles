export JAVA_HOME="$HOME/jdk-23.0.1"

NODE_PATH="$HOME/node/bin"
GRADLE_PATH="$HOME/gradle/bin"
GOLANG_PATH="$HOME/golang/bin"
JAVA_PATH="$HOME/java/bin"
CARGO_PATH="$HOME/.cargo/bin"

if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d $NODE_PATH ]; then
    export PATH="$NODE_PATH:$PATH"
fi

if [ -d $GRADLE_PATH ]; then
    export PATH="$GRADLE_PATH:$PATH"
fi

if [ -d $GOLANG_PATH ]; then
    export PATH="$GOLANG_PATH:$PATH"
fi

if [ -d $JAVA_PATH ]; then
    export PATH="$JAVA_PATH:$PATH"
fi

if [ -d $CARGO_PATH ]; then
    export PATH="$CARGO_PATH:$PATH"
fi

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT=' %F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f%# '

