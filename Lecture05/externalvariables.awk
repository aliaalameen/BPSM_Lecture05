#!/usr/bin/awk -f


cat myfiles.list | awk -v Linuxbox=${mycomputer} -v now=${now} '{
print "As of " now ", " Linuxbox " has " $1 " stored on it."
}'

