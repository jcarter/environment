if status is-login
    # Initialize Homebrew
    set -gx HOMEBREW_PREFIX "/usr/local";
    set -gx HOMEBREW_CELLAR "/usr/local/Cellar";
    set -gx HOMEBREW_REPOSITORY "/usr/local/Homebrew";
    set -q PATH; or set PATH ''; set -gx PATH "/usr/local/bin" "/usr/local/sbin" $PATH;
    set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/usr/local/share/man" $MANPATH;
    set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/usr/local/share/info" $INFOPATH;

    # Initialize asdf
    source /usr/local/opt/asdf/asdf.fish

    # Enable global Yarn packages
    set -p PATH /Users/jcarter/.asdf/installs/nodejs/15.0.1/.npm/bin

    # Oban pro
    set -gx OBAN_KEY_FINGERPRINT {{secret CB_OBAN_KEY_FINGERPRINT}};
    set -gx OBAN_LICENSE_KEY {{secret CB_OBAN_LICENSE_KEY}};
end

if status is-interactive
    # Disable greeting
    set fish_greeting

    # pisces config
    set pisces_only_insert_at_eol 1

    # Editor
    set -x EDITOR code

    # Pager
    set -x PAGER less

    # less options
    set -x LESS -SRc~

    # Erlang flags
    set -x ERL_AFLAGS -kernel shell_history enabled

    # bat config
    set -x BAT_PAGER less $LESS
    set -x BAT_THEME Dracula

    # fzf config
    set -l fzf_colors "fg:-1,fg+:-1,bg:-1,bg+:-1,hl:6,hl+:6,spinner:4,info:4,marker:4,pointer:2,prompt:2"
    set -x FZF_DEFAULT_OPTS "--reverse --no-info --height 50% --color $fzf_colors"
end

# Secrets
test -e $HOME/.secrets.fish && source $HOME/.secrets.fish
