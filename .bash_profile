#
# ~/.bash_profile
#

#============================================================================
# Add directories to $PATH -- these only have to be done once
#============================================================================

# Add Ruby Gems home to $PATH
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')/bin
export PATH="${GEM_HOME}:${PATH}"

# Add ~/bin to the head of $PATH
export PATH=~/bin:${PATH}

# Set home directory for KPP3
export KPP_HOME=~/work/KPP3
export KPP_BIN=${KPP_HOME}/bin

# Update the PATH -- add /usr/local/include for compilers
# and add the KPP_BIN folder
export PATH=~/bin:${PATH}:${KPP_BIN}

#============================================================================
# Apply settings in the .bashrc file
#============================================================================
[[ -f ~/.bashrc ]] && . ~/.bashrc
