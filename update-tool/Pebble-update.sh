#!/bin/bash

# Force Zenity Status message box to always be on top.

(
# =================================================================
echo "# Downloading Pebble source" ; sleep 1
cd
# =================================================================
echo "10"
echo "# Downloading Pebble source" ; sleep 1
git clone https://github.com/Mibea/Pebble.git 
# =================================================================
echo "50"
echo "# Compiling the Pebble icon theme" ; sleep 1
cd Pebble
# =================================================================
echo "75"
echo "# Compiling the Pebble icon theme" ; sleep 1
 ./install.sh 
# =================================================================
echo "80"
echo "# Cleaning up" ; sleep 1
cd
# =================================================================
echo "85"
echo "# Cleaning up" ; sleep 1
rm -rf Pebble
# =================================================================
echo "99"
echo "# Almost done" ; sleep 1
# notify-send 'Pebble Update' 'The Pebble icon theme is updated'
# =================================================================
echo "# All finished." ; sleep 1
echo "100"
) |
zenity --progress \
  --title="Pebble Update" \
  --text="Preparing" \
  --percentage=0 \
  --auto-close \
  --auto-kill


(( $? != 0 )) && zenity --error --text="Update failed!"



exit 0
