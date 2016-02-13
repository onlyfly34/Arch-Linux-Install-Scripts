#Download Arch Linux iso file
echo -e "\033[31m＊＊＊123＊＊＊\033[0m"

#wget -r -nd -A *.iso -l 1 -N http://archlinux.cs.nctu.edu.tw/iso/latest/

#Format the USB drive
#echo -e "\033[31m＊＊＊Format the USB drive and import iso to USB drive＊＊＊\033[0m"
#diskutil list
#read -p "Choose the USB drive you want to format(e.g,disk2): /dev/" usb_device
#diskutil unmountDisk ${usb_device}

#
#for file in `ls *.iso`
#do
#  filename=${file%.*};
#  extname=${file##*.};
#done
#echo -e "\033[31m＊＊＊Now extract Arch iso files into USB. Enter password if needed＊＊＊\033[0m"
#sudo dd if=${filename}.${extname} of=/dev/${usb_device} bs=8192
#diskutil eject /dev/${usb_device}
#echo -e "\033[32mUSB installation media is done and you can unplug it now!\033[0m"
