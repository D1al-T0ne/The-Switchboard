" Keeping things modular, calls the .files

if
  [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if
  [ -f ~/.exports ]; then
    source ~/.exports
fi

if
  [ -f ~/.inputrc ]; then
    source ~/.inputrc
fi

if
  [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi
