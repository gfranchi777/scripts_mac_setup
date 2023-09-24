if [[ -f ~/.git_functions ]]; then
  . ~/.git_functions
fi

if [[ -f ~/.zsh_variables ]]; then
  . ~/.zsh_variables
fi

if [[ -f ~/.zsh_aliases ]]; then
  . ~/.zsh_aliases
fi

if [[ -f ~/.zsh_functions ]]; then
  . ~/.zsh_functions
fi

# If we have not yet run the setup-env today
# then run it automatically.
if [[ $(cat ${LAST_SETUP_ENV}) != $(date +%Y-%m-%d) ]]; then
  setup-env
  date +%Y-%m-%d > ${LAST_SETUP_ENV}
fi

cls

# Get a random quote from the ~/.quotes file and display it
# to the terminal.
get-random-quote
