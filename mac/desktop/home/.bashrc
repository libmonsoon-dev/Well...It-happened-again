export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GOPATH=$HOME/go
export PATH=/usr/local/go/bin/:$GOPATH/bin:/opt/local/bin:/usr/local/Cellar/mtr/0.92/sbin/:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -z "$TMUX"] && [ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]; then
  tmux attach || tmux new
fi
