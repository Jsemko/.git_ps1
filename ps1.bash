# some error checking

if [ -z "$PROMPT_COMMAND_FLAGS" ]; then
    if [ ! -z "$PROMPT_COMMAND" ]; then
        echo "WARNING: overridding env var PROMPT_COMMAND" 1>&2
        echo "    set PROMPT_COMMAND_FLAGS to extend PROMT_COMMAND" 1>&2
    fi
fi


# source some things

SRC_LIST=(
    ~/.git_ps1/colors.bash
    ~/.git_ps1/git_completion.bash
    ~/.git_ps1/ps1_functions.bash
)


for b in "${SRC_LIST[@]}"; do
    [[ -f "$b" ]] && source "$b"
done


ps1_update()
{
        PS1="$LightBlue$User::$LightCyan$Host$ColorOff $(id -ng)$(ps1_git)$ColorOff $Yellow\w$ColorOff$NewLine$White$CommandId $Red\$ $WindowTitle$ColorOff"
}


ps1_set()
{
    if [ ! -z "$PROMPT_COMMAND_FLAGS" ]; then
        PROMPT_COMMAND="$PROMPT_COMMAND_FLAGS; ps1_update $@"
    else
        PROMPT_COMMAND="ps1_update $@"
    fi
}


ps1_set
