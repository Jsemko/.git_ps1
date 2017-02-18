# BASH Colors

# Various variables you might want for your PS1 prompt instead
PathShort="\w"
PathFull="\W"
NewLine="\n"
CommandId="\!"
User="\u"
Host="\h"
WindowTitle="\[\e]2;\W\a\]"

# Color Reference:
#
# http://misc.flogisoft.com/bash/tip_colors_and_formatting

# Forground

Default="\[\e[0m\]"

Black="\[\e[30m\]"
Blue="\[\e[34m\]"
Cyan="\[\e[36m\]"
DarkGray="\[\e[90m\]"
Gray="\[\e[37m\]"
Green="\[\e[32m\]"
LightBlue="\[\e[94m\]"
LightCyan="\[\e[96m\]"
LightGreen="\[\e[92m\]"
LightMajenta="\[\e[95m\]"
LightRed="\[\e[91m\]"
LightYellow="\[\e[93m\]"
Majenta="\[\e[35m\]"
Red="\[\e[31m\]"
White="\[\e[97m\]"
Yellow="\[\e[33m\]"

# Background

OnBlack="\[\e[40m\]"
OnBlue="\[\e[44m\]"
OnCyan="\[\e[46m\]"
OnDarkGray="\[\e[100m\]"
OnGreen="\[\e[42m\]"
OnLightBlue="\[\e[104m\]"
OnLightCyan="\[\e[106m\]"
OnLightGray="\[\e[47m\]"
OnLightGreen="\[\e[102m\]"
OnLightMajenta="\[\e[105m\]"
OnLightRed="\[\e[101m\]"
OnLightYellow="\[\e[103m\]"
OnMajenta="\[\e[45m\]"
OnRed="\[\e[41m\]"
OnWhite="\[\e[107m\]"
OnYellow="\[\e[43m\]"


# Reset
ColorOff="$Default"