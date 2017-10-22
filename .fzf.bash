# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/andrewvida/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/andrewvida/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/andrewvida/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/andrewvida/.fzf/shell/key-bindings.bash"

