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
$env.FZF_CTRL_T_COMMAND = $env.FZF_DEFAULT_COMMAND
$env.FZF_DEFAULT_OPTS = "" 
| $in + " --color=bg+:#f2f1f4,bg:#fbf1f2,spinner:#06969A,hl:#86BBD8"
| $in + " --color=fg:#a59daf,header:#86BBD8,info:#DCB16C,pointer:#06969A"
| $in + " --color=marker:#06969A,fg+:#72677E,prompt:#DCB16C,hl+:#86BBD8"

# hledger
$env.LEDGER_FILE = $"($env.REPOS)/hledger/.hledger.journal"

# starship
$env.STARSHIP_CONFIG = $"($env.XDG_CONFIG_HOME)/starship/starship.toml"
mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu
