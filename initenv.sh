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
#  cd linux-env-files
#  ./initenv.sh
#
# !REVISION HISTORY:
#  Use the gitk browser to view the revision history!
#EOP
#------------------------------------------------------------------------------
#BOC

# Copy files to the home folder
cp -f .bash_profile ~
cp -f .bash_aliases ~
#cp -f .gitconfig    ~
cp -f .tmux.conf    ~
cp -f .Xresources   ~
cp -f .ssh-config ~/.ssh/config

# Copy emacs init files
[[ ! -d ~/.emacs.d ]] && mv ~/.emacs.d .was.emacs.d
cp -fR .emacs.d ~/.emacs.d/
#EOC
