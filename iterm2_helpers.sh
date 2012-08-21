# Usage:
#   Source this script from your Bash start-up script (eg. ~/.bashrc, ~/.bash_profile).
#
# Setting titles:
#   title something
#   title "more than 1 word"
#
# Setting tab colors:
#   tab_color 195  89  76
#   tab_color 219 154  88
#   tab_color 145 185 104
#   tab_color  92 155 204
#
# Setting pre-defined tab colors with titles:
#   tab_red "Rails Server"
#   tab_orange "Rails Console"
#   tab_blue "SQL Dev"
#   tab_green "Tests"

title_help0()
{
echo "ERROR: No argument provided."
echo "Usage:"
echo "  `basename $0` \"title\" to provide a new Terminal title."
}

title_help2()
{
echo "ERROR: Too many arguments provided."
echo "Usage:"
echo "  `basename $0` \"title\" to provide a new Terminal title."
}

function set_terminal_title() {
if [ $# -eq 0 ]
then
  title_help0;
elif [ $# -eq 1 ]
then
  # osascript -e "tell application \"Terminal\" to set custom title of window 1 to \"$1\""
  echo -ne "\033]0;$1\007"
elif [ $# -gt 1 ]
then
  title_help2;
fi
}
alias title='set_terminal_title'

function titlepwd() {
  set_terminal_title `pwd`
}

function tab_red()    { title "$1"; tab_color 195  89  76; }
function tab_orange() { title "$1"; tab_color 219 154  88; }
function tab_green()  { title "$1"; tab_color 145 185 104; }
function tab_blue()   { title "$1"; tab_color  92 155 204; }

function tab_color() {
  echo -n -e "\033]6;1;bg;red;brightness;$1\a"
  echo -n -e "\033]6;1;bg;green;brightness;$2\a"
  echo -n -e "\033]6;1;bg;blue;brightness;$3\a"
}
