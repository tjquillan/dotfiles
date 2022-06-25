# XDG Base Directory Specification Compliance
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Add cargo crates to PATH
export PATH="$CARGO_HOME/bin:$PATH"
