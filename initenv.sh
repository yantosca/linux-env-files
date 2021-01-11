#!/bin/bash

#------------------------------------------------------------------------------
#                  GEOS-Chem Global Chemical Transport Model                  !
#------------------------------------------------------------------------------
#BOP
#
# !MODULE: initenv.sh
#
# !DESCRIPTION: Copies startup files from ~/linux-env-files to your system.
#\\
#\\
# !CALLING SEQUENCE:
#  cd cannon-env-files
#  ./initenv.sh
#
# !REVISION HISTORY: 
#  Use the gitk browser to view the revision history!
#EOP
#------------------------------------------------------------------------------
#BOC

# Copy files to the home folder
cp -f root/.bash_aliases ~
cp -f root/.gitconfig    ~
cp -f root/.tmux.conf    ~
cp -f root/.Xresources   ~

# Copy emacs init files
if [[ ! -d ~/.emacs.d ]]; then
    mkdir ~/.emacs.d
fi
cp -f root/.emacs.d/*. ~/.emacs.d/
#EOC
