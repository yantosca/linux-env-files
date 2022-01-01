#
# .bash_profile: Only executes at login
#

# Source the .bash_set_path file if it exists,
# which adds certain folders to the $PATH variable
# that only needs to be done at startup.
[[ -f ~/.bash_set_path ]] && . ~/.bash_set_path

# Source the .bashrc file if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc
