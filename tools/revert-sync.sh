#!/bin/bash

if [ -z "$RAYCAST_EXTENSION_DEST" ]; then
    echo "Error: Environment variable 'RAYCAST_EXTENSION_DEST' is not set."
    exit 1
fi

rsync -a --delete --exclude='.git' --exclude='tools' --exclude-from=.gitignore "$RAYCAST_EXTENSION_DEST"/ .

mv $RAYCAST_EXTENSION_DEST/README.md $RAYCAST_EXTENSION_DEST/README-en.md
mv $RAYCAST_EXTENSION_DEST/README-zh.md $RAYCAST_EXTENSION_DEST/README.md
