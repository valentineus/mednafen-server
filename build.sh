#!/bin/sh
# Author:       Valentin Popov
# Email:        info@valentineus.link
# Date:         2017-11-10
# Usage:        /bin/sh build.sh
# Description:  Build the package for the GNU/Debian system.

# Updating the Environment
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
MEDNAFEN="mednafen-server-0.5.2"

# Preparing the system
apt-get --yes update
apt-get --yes install curl xz-utils build-essential pkg-config dh-make libasound2-dev libsdl1.2-dev libsndfile1-dev

# Preparation of the working catalog
curl --location --remote-name "https://mednafen.github.io/releases/files/$MEDNAFEN.tar.xz"
tar -xpJf "$MEDNAFEN.tar.xz"
mv ./"mednafen-server" ./"$MEDNAFEN"
cd ./"$MEDNAFEN"

# Build the package
dh_make --yes --single --email "info@valentineus.link" --copyright "gpl3" --file ../"$MEDNAFEN.tar.xz"
dpkg-buildpackage --compression=bzip2

# End of work
exit 0