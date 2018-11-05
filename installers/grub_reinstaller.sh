#!/bin/bash

# List of commands to reinstall grub-2:



# sudo fdisk -l -> use this to check your disk partitions

if [ $# == 0 ]
then
	echo "Usage:"
	echo "\t\$1 -> your linux partition"

else
	sudo mount /dev/$1 /mnt 		# mounting a partition where it is installed a linux partition

	sudo mount --bind /dev /mnt/dev		# |
	sudo mount --bind /proc /mnt/proc 	# |-> mounting all other partitions

	sudo chroot /mnt			# rooting into linux installed partition

	grub-install --recheck /dev/sda		# reinstalling grub-2
	echo "Grub-2 reinstalled succesfully!!"
fi

# Once you habe been reinstalled grub-2, you need to check other disks to find all operative systems:

# su -
# update-grub2
