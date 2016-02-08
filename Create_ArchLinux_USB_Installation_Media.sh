#Download Arch Linux iso and signature file
echo -e "\033[31mDownload Arch Linux iso and signature file\033[0m\n"
wget -r -nd -A *.iso -A *.iso.sig -l 1 -N http://archlinux.cs.nctu.edu.tw/iso/latest/

#驗證

#Format the USB drive
diskutil list
read -p "Choose the USB drive you want to format:" usb_device
diskutil unmountDisk ${usb_device}

#

#
echo "Hello world test"
echo "\nYour full name is: ${usb_device}"
