export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GOPATH=$HOME/go
export PATH=/usr/local/bin/go/:$GOPATH/bin:/opt/local/bin:/usr/local/Cellar/mtr/0.92/sbin/:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/$HOME/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/$HOME/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/$HOME/Downloads/google-cloud-sdk/completion.bash.inc'; fi

if [ -z "$TMUX"] && [ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]; then
  tmux attach || tmux new
fi

source <(kubectl completion bash)
