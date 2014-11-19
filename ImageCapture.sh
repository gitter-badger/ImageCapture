#!/bin/bash
##################################################################################################################
# This is a wrapper for the Ruby ImageCapture program. You need to create a script in your /etc/init/d/ dir 
# and add it to your default run levels. The script that resides in the init.d dir should point to this wrapper.
# Be conscious of the fact that anabling this will prevent you from rebooting. Either disable or build a function
# automate this for you. Add it here.
##################################################################################################################
while true; do

        if [[ `ps aux | grep "ruby ImageCapture.rb" | awk 'END {print NR}'` -ne 2 ]]; then

                ruby /home/anthony/Documents/Ruby/ImageCapture.rb;

        fi

    sleep 2;

done

