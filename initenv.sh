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
cp -f .bash_aliases  ~
cp -f .tmux.conf     ~
cp -f .Xresources    ~
cp -f .ssh-config    ~/.ssh/config

# Copy the proper .bash_profile for Linux or MacOS
[[ "x${SYSTEM}" == "xLinux"  ]] && cp -f .bash_profile_linux  ~
[[ "x${SYSTEM}" == "xDarwin" ]] && cp -f .bash_profile_macos  ~

# Copy emacs init files
[[ ! -d ~/.emacs.d ]] && mv ~/.emacs.d .was.emacs.d
cp -fR .emacs.d ~/.emacs.d/
#EOC
