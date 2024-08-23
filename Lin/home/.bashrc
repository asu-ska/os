#?force_color_prompt=yes

#Exist in ubuntu
# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#For PI
setfont CyrSlav-VGA16 

function detect_git_branch {
  local git_branch=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/")
  [ "$git_branch" != "" ] && echo " ($git_branch) "
}

function detect_rvm_name {
  local gemset=$(echo $GEM_HOME | awk -F'/' '{print $NF}')
  [ "$gemset" != "" ] && echo "($gemset)"
}

function dev_info {
  echo "$(detect_rvm_name)$(detect_git_branch)"
}

# Colors
txtred='\e[0;31m' # Red
txtwht='\e[0;37m' # White
txtrst='\e[0m'    # Text Reset
 
# Custom command prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \[$txtwht\]\w \[$txtred\]\$(dev_info)\[$txtwht\]$
\[$txtrst\]"
