#Download Arch Linux iso file
echo -e "\033[31mDownload Arch Linux iso and signature file\033[0m\n"
wget -r -nd -A *.iso -l 1 -N http://archlinux.cs.nctu.edu.tw/iso/latest/

#Format the USB drive
echo -e "\033[31mFormat the USB drive and import iso to USB drive\033[0m"
diskutil list
xread -p "Choose the USB drive you want to format:" usb_device
diskutil unmountDisk ${usb_device}

#
for file in `ls *.iso`
do
  filename=${file%.*};
  extname=${file##*.};
done
dd if=${filename}.${extname} of=${usb_device} bs=8192
echo -e "\033[32mUSB installation media is done and you can unplug it now!\033[0m"

#

#
echo "Hello world test"
echo "\nYour full name is: ${usb_device}"
echo -e "\033[31mTest\033[0m"
echo -e "\033[31mTest\033[0m"
echo -e "\033[31mTest\033[0m"
echo -e "\033[31mTest\033[0m"
