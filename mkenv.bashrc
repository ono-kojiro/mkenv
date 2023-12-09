export MKENV_ROOT="$HOME/.mkenv"

echo ":$PATH:" | grep ":$MKENV_ROOT/bin:" > /dev/null 2>&1
if [ $? -ne 0 ]; then
  export PATH="$MKENV_ROOT/bin:$PATH"
fi

eval "$(mkenv init --path)"

eval "$(mkenv init -)"


