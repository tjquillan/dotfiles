declare -A ZINIT
ZINIT[HOME_DIR]="$XDG_DATA_HOME/zsh/zinit"
ZINIT[BIN_DIR]="${ZINIT[HOME_DIR]}/bin"
ZINIT[CACHE_DIR]="$XDG_CACHE_HOME/zsh/zinit"
ZINIT[ZCOMPDUMP_PATH]="${ZINIT[CACHE_DIR]}/.zcompdump"
ZINIT[MODULE_DIR]="${ZINIT[HOME_DIR]}/module"

# ZINIT[CACHE_DIR] doesn't exist. Use this for now
ZSH_CACHE_DIR="${ZINIT[CACHE_DIR]}"

if [[ ! -f "${ZINIT[BIN_DIR]}/zinit.zsh" ]]; then
    command mkdir -p "${ZINIT[HOME_DIR]}"
    command chmod g-rwX "${ZINIT[HOME_DIR]}"
    command git clone https://github.com/zdharma-continuum/zinit "${ZINIT[BIN_DIR]}"
    source "${ZINIT[BIN_DIR]}/zinit.zsh"
    zinit module build  
fi

module_path+=( "${ZINIT[MODULE_DIR]}/Src" )
[[ -z "${ZINIT_REGISTERED_PLUGINS}" ]] && source "${ZINIT[BIN_DIR]}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# =============== [Completions] ===============
zinit light-mode lucid wait as"completion" for \
    zsh-users/zsh-completions \
    gradle/gradle-completion

zinit is-snippet lucid wait as"completion" blockf for \
    has"cargo" \
        https://github.com/rust-lang/cargo/blob/master/src/etc/_cargo \
    has"docker" \
        https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zinit is-snippet lucid wait for \
    has"pyenv" \
        https://github.com/pyenv/pyenv/blob/master/completions/pyenv.zsh

# ================= [Prompt] ==================
zinit light-mode lucid for \
    tjquillan/p9k-theme-pastel \
    depth=1 \
        romkatv/powerlevel10k

# ================== [QOL] ====================
zinit light-mode lucid wait for \
    tjquillan/zsh-pipenv \
    tjquillan/zsh-gradle

# ================= [Plugins] =================
zinit light-mode lucid wait for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
        z-shell/F-Sy-H \
    wfxr/forgit \
    ael-code/zsh-colored-man-pages
