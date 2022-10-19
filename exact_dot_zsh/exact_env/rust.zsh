##### XDG Base Directory Specification Compliance #####
# Rustup
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
# Cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

#### Path ####
# Cargo
export PATH="$CARGO_HOME/bin:$PATH"
