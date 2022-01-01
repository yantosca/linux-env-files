#
# .bash_profile: Only executes at login
#

#============================================================================
# Source the .bash_set_path file if it exists.  This will add certain
# folders to the $PATH variable (which only needs to be done at login).
#============================================================================
[[ -f ~/.bash_set_path ]] && . ~/.bash_set_path

#============================================================================
# Source the .bashrc file if it exists
#============================================================================
[[ -f ~/.bashrc ]] && . ~/.bashrc
