#!/bin/bash
# prints the input
NEWLINE=$'\n'
echo "----------------Welcome----------------"
echo "           __________"
echo "         .'----------\`."
echo "         | .--------. |"
echo "         | |########| |       __________" 
echo "         | |########| |      /__________\\"
echo ".--------| \`--------' |------|    --=-- |-------------." 
echo "|        \`----,-.-----'      |o ======  |             |"
echo "|       ______|_|_______     |__________|             |"
echo "|      /  %%%%%%%%%%%%  \                             |"
echo "|     /  %%%%%%%%%%%%%%  \                            |"
echo "|     ^^^^^^^^^^^^^^^^^^^^                            |"
echo "+-----------------------------------------------------+"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

function search() {
  grep -r $1 .
}

function newVersion() {
  ARGS=""
  for var in "$@"
  do 
    ARGS+="$var "
  done

  py S:\\Gemensamt\\Styrsystem\\newVersion.py $ARGS
}

function gstatus()
{
  git status
}

function gadd()
{
  git add .
}

function gcommit()
{
  git commit -m "$1"
}

function serverd5()
{
  cd S:\\Gemensamt\\Styrsystem\\SPCS\\Dasa5
  gpull
}

function serverf()
{
  cd S:\\Gemensamt\\Styrsystem\\SPCS\\Forester
  gpull
}

function dasa5()
{
  cd C:\\Users\\spmjg\\Documents\\SPCS\\Dasa5
  gpull
}

function forester()
{
  cd C:\\Users\\spmjg\\Documents\\SPCS\\Forester
  gpull
}

function gmerge()
{
  git merge --ff -m "Auto-merge between Github servers and SP Servers" --log $1 $2
}

function gpull()
{
  git pull
}

function gpush()
{
  git push
}

function gpushall()
{
  gpush
  git checkout online
  gmerge origin master
  gpush online online
  git checkout master
}

function gacnp()
{
  NEWLINE=$'\n'
  FIRST="Changes: ${NEWLINE}"
  SECOND=""
  
  for var in "$@"
  do 
    SECOND+=" - $var${NEWLINE}"
  done

  E="$FIRST$SECOND"

  git add .
  git commit -m "$E" 
  git status
}

function gitfastcommit()
{
  NEWLINE=$'\n'
  FIRST="Changes: ${NEWLINE}"
  SECOND=""
  
  for var in "$@"
  do 
    SECOND+=" - $var${NEWLINE}"
  done

  E="$FIRST$SECOND"

  git add .
  git commit -m "$E" 
  git status
  gpushall
}

function art()
{
  OLD="                         ______\n _________        .---\"\"\"      \"\"\"---.\n:______.-':      :  .--------------.  :\n| ______  |      | :                : |\n|:______B:|      | |  Little Error: | |\n|:______B:|      | |                | |\n|:______B:|      | |  Power not     | |\n|         |      | |  found.        | |\n|:_____:  |      | |                | |\n|    ==   |      | :                : |\n|       O |      :  '--------------'  :\n|       o |      :'---...______...---'\n|       o |-._.-i___/'             \._\n|'-.____o_|   '-.   '-...______...-'  \`-._\n:_________:      \`.____________________   \`-.___.-.\n                 .'.eeeeeeeeeeeeeeeeee.'.      :___:\n    fsc        .'.eeeeeeeeeeeeeeeeeeeeee.'.\n              :____________________________:"
  NEW=""
  NEW+="           ________________________________________________\n"
  NEW+="          /                                                \\ \n"
  NEW+="         |    _________________________________________     |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |  C:\\> _                                 |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |                                         |    |\n"
  NEW+="         |   |_________________________________________|    |\n"
  NEW+="         |                                                  |\n"
  NEW+="          \\_________________________________________________/\n"
  NEW+="                 \\___________________________________/\n"
  NEW+="              ___________________________________________\n"
  NEW+="           _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- \`-_\n"
  NEW+="        _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.\`-_\n"
  NEW+="     _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-\`__\`. .-.-.-.\`-_\n"
  NEW+="   _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.\`-_\n"
  NEW+=" _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.\`-_\n"
  NEW+=":-------------------------------------------------------------------------:\n"
  NEW+="\`---._.-------------------------------------------------------------._.---'"
  
  NEW2=""
  NEW2+="               _________________\n"
  NEW2+="              /                /|\n"
  NEW2+="             /                / |\n"
  NEW2+="            /________________/ /|\n"
  NEW2+="         ###|      ____      |//|\n"
  NEW2+="        #   |     /   /|     |/.|\n"
  NEW2+="       #  __|___ /   /.|     |  |_______________\n"
  NEW2+="      #  /      /   //||     |  /               /|                  ___\n"
  NEW2+="     #  /      /___// ||     | /               / |                 / \\ \\ \n"
  NEW2+="     # /______/!   || ||_____|/               /  |                /   \\ \\ \n"
  NEW2+="     #| . . .  !   || ||                     /  _________________/     \\ \\ \n"
  NEW2+="     #|  . .   !   || //       ________     /  /\\________________  {   /  }\n"
  NEW2+="     /|   .    !   ||//~~~~~~~/   0000/    /  / / ______________  {   /  /\n"
  NEW2+="    / |        !   |'/       /9  0000/    /  / / /             / {   /  /\n"
  NEW2+="   / #\________!___|/       /9  0000/    /  / / /_____________/___  /  /\n"
  NEW2+="  / #     /_____\\/         /9  0000/    /  / / /_  /\\_____________\\/  /\n"
  NEW2+=" / #                      \`\`^^^^^^     /   \\ \\ . ./ / ____________   /\n"
  NEW2+="+=#==================================/      \\ \\ ./ / /.  .  .  \ /  /\n"
  NEW2+="|#                                   |       \\ \\/ / /___________/  /\n"
  NEW2+="#                                    |        \\__/________________/\n"
  NEW2+="|                                    |               |  |  / /    \n"   
  NEW2+="|                                    |               |  | / /       \n"
  NEW2+="|                                    |       ________|  |/ /________       \n"
  NEW2+="|                                    |      /_______/    \\_________/\\       \n"
  NEW2+="|                                    |     /        /  /           \\ )       \n"
  NEW2+="|                                    |    /OO^^^^^^/  / /^^^^^^^^^OO\\)       \n"
  NEW2+="|                                    |            /  / /        \n"
  NEW2+="|                                    |           /  / /\n"
  NEW2+="|                                    |          /___\\/\n"
  NEW2+="|                                    |           oo\n"
  NEW2+="|____________________________________|\n"
  
  EXP=$((RANDOM%3))
  
  if ((EXP==0)); then
    echo -e "$OLD"
  elif ((EXP==1)); then
    echo -e "$NEW"
  else
    echo -e "$NEW2"
  fi

  
}