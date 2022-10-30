#------------------------------------------------
# FISH CONFIG
#------------------------------------------------

#-----------------------
# IMPORT BASH ALIASES
#-----------------------
source ~/.bash_aliases

#-----------------------
# VIM KEY BINDINGS
#-----------------------
fish_vi_key_bindings

#-----------------------
# DEFAULT KEY BINDINGS
#-----------------------
fish_default_key_bindings

#-----------------------
# PROMPT
#-----------------------
function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '[%s@%s > %s%s%s] ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end
