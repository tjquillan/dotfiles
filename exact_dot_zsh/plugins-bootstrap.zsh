ZSH_DATA_DIR="$XDG_DATA_HOME/zsh"

declare -A ZI
ZI[HOME_DIR]="${ZSH_DATA_DIR}/zi"
ZI[BIN_DIR]="${ZI[HOME_DIR]}/bin"
ZI[ZMODULES_DIR]="${ZI[HOME_DIR]}/zmodules"
ZI[ZCOMPDUMP_PATH]="${ZSH_DATA_DIR}/zcompdump"

if [[ ! -f "${ZI[BIN_DIR]}/zi.zsh" ]]; then
    command git clone https://github.com/z-shell/zi.git "${ZI[BIN_DIR]}"
    source "${ZI[BIN_DIR]}/zi.zsh"
    zi module build
fi

module_path+=( "${ZI[ZMODULES_DIR]}/zpmod/Src" )
zmodload zi/zpmod
[[ -z "${ZI_REGISTERED_PLUGINS}" ]] && source "${ZI[BIN_DIR]}/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

# =============== [Completions] ===============
zi light-mode lucid wait as"completion" blockf for \
    zsh-users/zsh-completions \
    gradle/gradle-completion

zi is-snippet lucid wait as"completion" blockf for \
    has"cargo" \
        https://github.com/rust-lang/cargo/blob/master/src/etc/_cargo \
    has"docker" \
        https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zi is-snippet lucid wait for \
    has"pyenv" \
        https://github.com/pyenv/pyenv/blob/master/completions/pyenv.zsh

# ================= [Prompt] ==================
zi light-mode lucid for \
    iboyperson/p9k-theme-pastel \
    depth=1 \
        romkatv/powerlevel10k

# ================== [QOL] ====================
zi light-mode lucid wait for \
    iboyperson/zsh-pipenv \
    iboyperson/zsh-gradle

# ================= [Plugins] =================
zi light-mode lucid wait for \
    atinit"ZI[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        z-shell/F-Sy-H \
    wfxr/forgit \
    ael-code/zsh-colored-man-pages
