# .bash_aliases

# alias vim="nvim"
alias v="nvim"
alias cc="clear"
alias ls="ls --color=auto"
alias ll="ls -alF"
alias grep="grep --color=auto"
alias jq="jq --color-output"
# alias t="task"

alias node-redd="nohup node-red -v > ~/node-red.log &"
alias mosquittod="echo -e 'allow_anonymous true\nlistener 1883 $(ip -4 -o address show wlp2s0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')' > ~/mosquitto.conf || nohup mosquitto -c ~/mosquitto.conf -v > ~/mosquitto.log &"
alias arc="pgrep -x arduino-cli > /dev/null && pkill arduino-cli; arduino-cli compile -u; alacritty -e sh -c 'arduino-cli monitor --timestamp' &"
