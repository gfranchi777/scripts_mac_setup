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
# then run it.
if [[ ! -f ${LAST_SETUP_ENV} ]]; then
  touch ${LAST_SETUP_ENV}
fi

if [[ $(cat ${LAST_SETUP_ENV}) != $(date +%Y-%m-%d) ]]; then    
  echo -n "Environment Setup Not Done Today. Would You Like To Do It [Y|N]? "
  read run_env_setup

  if [[ ${run_env_setup} == [Yy] ]]; then
    setup-env
    date +%Y-%m-%d > ${LAST_SETUP_ENV}
  fi
fi

cls

# Get a random quote from the ~/.quotes file
# and display it to the terminal
get-random-quote
