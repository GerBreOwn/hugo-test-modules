#!/bin/sh

#~ echo "Sending to .111"
#~ rsync -avzhd . --exclude .git gerald@192.168.1.111:/media/gerald/Projects/gsb-wx.me
#~ echo "Sending to .134"
#~ rsync -avzhd . --exclude .git  gerald@192.168.1.134:/home/gerald/141-backup/gsb-wx.me

echo "Sending to Github"

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519

git add -A
git commit -m "Generated this file on `date +'%Y-%m-%d %H:%M:%S'`";
git push -u origin main

