#Download Arch Linux iso file
while(true)
do
	read -p "Do you want to download the latest Arch Linux iso? (yes/no)" download
	if [ ${download} == "yes" ] ; then
		echo -e "\033[32m###Downloading Arch Linux iso###\033[0m"
		wget -r -nd -A *.iso -l 1 -N http://archlinux.cs.nctu.edu.tw/iso/latest/
		break
	elif [ ${download} == "no" ] ; then
		break;
	else
		echo -e "\033[31m###Please type yes or no###\033[0m"
	fi
done

#Format the USB drive
echo -e "\033[32m###Format the USB drive and import iso to USB drive###\033[0m"
diskutil list
read -p "Choose the USB drive you want to format(e.g,disk2): /dev/" usb_device
diskutil unmountDisk ${usb_device}

#
for file in `ls *.iso`
do
  filename=${file%.*};
  extname=${file##*.};
done
echo -e "\033[32m###Now extract Arch iso files into USB. Enter password if needed###\033[0m"
sudo dd if=${filename}.${extname} of=/dev/${usb_device} bs=8192
diskutil eject /dev/${usb_device}
echo -e "\033[32mUSB installation media is done and you can unplug it now!\033[0m"
