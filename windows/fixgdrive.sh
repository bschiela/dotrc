# unmount and remount google drive folders to WSL
sudo umount /mnt/h
sudo umount /mnt/g
sudo mount -t drvfs H: /mnt/h -o metadata
sudo mount -t drvfs G: /mnt/g -o metadata
