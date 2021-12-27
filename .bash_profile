#
# ~/.bash_profile
#

#============================================================================
# Add directories to $PATH -- these only have to be done once
#============================================================================

# Ruby Gems location
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')/bin

# KPP location
export KPP_HOME=~/work/KPP3
export KPP_BIN=${KPP_HOME}/bin

# Update the PATH settings
export PATH="~/bin:${GEM_HOME}:${PATH}:${KPP_BIN}"

#============================================================================
# Apply settings in the .bashrc file
#============================================================================
[[ -f ~/.bashrc ]] && . ~/.bashrc
