#!/bin/sh
if test "$2" = "auto"; then
	/bin/mount -t ext4 -o noatime,nodev,barrier=0,data=writeback $4 $5 || /bin/mount $*
else
	/bin/mount $*
fi
