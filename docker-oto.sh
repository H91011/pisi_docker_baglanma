#!/bin/bash

echo ""
sudo docker run -v /home/KULLANICI_ADINIZ/DOSYANIZ/:/git -v /home/KULLANICI_ADINIZ/DOSYANIZ/:/root -v /var/cache/pisi/archives:/var/cache/pisi/archives -v /var/cache/pisi/packages:/var/cache/pisi/packages -itd ertugerata/pisi-chroot-farm bash
echo "##"
echo "Dosyalar bağlandı."
sudo docker ps -a > cikti.txt

var=$(sed -n '2'p cikti.txt)  "";
dizi=($var);
uzunluk=${#dizi};
echo "Konteynır ismi alındı";
echo "##";
konteynir_adi=${dizi[$uzunluk+1]};
echo ""
sudo docker start $konteynir_adi
sudo docker attach $konteynir_adi

"";

