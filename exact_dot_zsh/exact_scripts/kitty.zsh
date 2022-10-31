if [[ ! -z "${KITTY_PID}" ]]; then
  # Terminal title
  _kitty_set_title() {
    print -Pn "\e]0;%~\a"
  }
  precmd_functions+=(_kitty_set_title)

  # Kitten aliases
  alias icat="kitty +kitten icat"
  alias kdiff="kitty +kitten diff"
  alias ssh="kitty +kitten ssh"
fi
