# xdg dirs
$env.XDG_CONFIG_HOME = $"($env.HOME)/.config"
$env.XDG_CACHE_HOME = $"($env.HOME)/.cache"
$env.XDG_DATA_HOME = $"($env.HOME)/.local/share"

# default editor 
$env.EDITOR = "nvim"
$env.VISUAL = "nvim"

# custom dirs
$env.REPOS = $"($env.HOME)/repos"
$env.DOTFILES = $"($env.REPOS)/dotfiles"

# fzf and ripgrep
$env.FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git'"
$env.FZF_CTRL_T_COMMAND = "$env.FZF_DEFAULT_COMMAND"

# hledger
$env.LEDGER_FILE = $"($env.REPOS)/hledger/.hledger.journal"

# starship
$env.STARSHIP_CONFIG = $"($env.XDG_CONFIG_HOME)/starship/starship.toml"
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu
