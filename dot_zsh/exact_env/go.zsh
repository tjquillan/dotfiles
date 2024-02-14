##### XDG Base Directory Specification Compliance #####
# Go
export GOPATH="$XDG_DATA_HOME"/go
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod

#### Path ####
export PATH="$GOPATH/bin:$PATH"
