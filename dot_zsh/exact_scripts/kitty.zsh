if [[ ! -z "${KITTY_PID}" ]]; then
  # Terminal title
  _kitty_set_title() {
    print -Pn "\e]0;%~\a"
  }
  precmd_functions+=(_kitty_set_title)

  # Kitten aliases
  alias icat="kitten icat"
  alias kdiff="kitten diff"
  alias ssh="kitten ssh"
fi
