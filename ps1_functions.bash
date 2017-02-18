
# Colors

ps1_git()
{
    #-------------------------------------------------------------------------
    # status info

    local git_status="$(git status 2>/dev/null)"

    local status=

    [[ "${git_status}" = *deleted* ]]                    && status="$status-"
    [[ "${git_status}" = *Untracked[[:space:]]files:* ]] && status="$status+"
    [[ "${git_status}" = *modified:* ]]                  && status="$status*"
    [[ "${git_status}" = *to\ be\ committed* ]]          && status="$status(+)"

    #-------------------------------------------------------------------------
    # branch info

    local branch=$(git branch 2>/dev/null | grep '*')

    # throw away first 2 chars
    branch=${branch:2}

    case "$branch" in

        master*)  printf "%s" " $White$OnRed($branch)$status" ;;
        develop*) printf "%s" " $Green($branch)$status" ;;
        "")       printf "%s" "" ;;
        *)        printf "%s" " $Cyan($branch)$status" ;;

    esac
}

