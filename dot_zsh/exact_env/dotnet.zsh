##### XDG Base Directory Specification Compliance #####
# dotnet CLI
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# NuGet
export NUGET_PACKAGES="$XDG_DATA_HOME/NuGet/packages"
export NUGET_HTTP_CACHE_PATH="$XDG_CACHE_HOME/NuGet/v3-cache"
export NUGET_PLUGINS_CACHE_PAT="$XDG_CACHE_HOME/NuGet/plugins-cache"

# OmniSharp
export OMNISHARPHOME="$XDG_DATA_HOME/omnisharp"

#### Path ####
export PATH="$HOME/.dotnet/tools:$PATH"

#### Other ####
# Telemetry Opt-out
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_HTTPREPL_TELEMETRY_OPTOUT=1

# Hide Logo
export DOTNET_NOLOGO=1

