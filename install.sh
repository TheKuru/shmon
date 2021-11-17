#!/bin/bash
########################################################################################################################
## Hazırlayan : Uğur KURU                                                                                             ##
## Tarih      : 15.11.2021                                                                                            ##
## Konu       : Bash Script İşletim Sistemi Belirleme                                                                 ##
## Versiyon   : 1.0.1                                                                                                 ##
########################################################################################################################

if [ $1 == "--help" ] || [ $1 == "-h" ]
then
echo "# Yardım #"
echo "Version: v1.0.1"
echo ""
echo "Commands:"
echo "Either long or short options are allowed."
echo "--macos       -mac    chain    Mac Os İşletim sisteminin kuruluımunu başlatır."
echo "--windows     -win    chain    Windows İşletim sisteminin kuruluımunu başlatır."
echo "--ubuntu      -ubnt   chain    Ubuntu İşletim sisteminin kuruluımunu başlatır."
echo "--centos      -cnts   chain    CentOS balancer sisteminin kuruluımunu başlatır."
echo "--debian      -dbn    chain    Debian balancer sisteminin kuruluımunu başlatır."
echo ""
echo "Usage:"
echo "      install.sh -mac  chain  Mac Os işletim sistemine göre kurulum geröekleştirilir."
echo "      install.sh -win  chain  Windows işletim sistemine göre kurulum geröekleştirilir."
echo "      install.sh -ubnt chain  Ubuntu işletim sistemine göre kurulum geröekleştirilir."
echo "      install.sh -cnts chain  CentOS işletim sistemine göre kurulum geröekleştirilir."

elif [ $1 == "--macos" ] || [ $1 == "-mac" ]
then

  cd /etc/
  mkdir itman
  cd /etc/shmon
  sudo curl https://raw.githubusercontent.com/TheKuru/shmon/main/install.sh -o install.sh
  chmod +x /etc/shmon/install.sh
  bash install.sh
  sshchmod +x /etc/shmon/shmon.sh
  sudo ln -s /etc/shmon/shmon.sh /usr/local/bin/shmon

  sudo rm -R install.sh


echo "Kurulum Başarıyla Tamamlandı!"

elif [ $1 == "--windows" ] || [ $1 == "-win" ]
then
     echo "Windows Kurulumu"

elif [ $1 == "--Ubuntu" ] || [ $1 == "-ubnt" ]
then
     echo "Ubuntu Kurulumu"

elif [ $1 == "--centos" ] || [ $1 == "-cnts" ]
then
  yum install update -y
  cd /usr/local/
  mkdir itman
  cd /usr/local/itman/
  wget http://46.20.154.164/bashlib/itman.sh
  chmod 777 /usr/local/itman/itman.sh
  sudo ln -s /usr/local/itman/itman.sh /usr/local/bin/itman
  sudo rm -R install.sh
  echo "Kurulum Başarıyla Tamamlandı!"
else
     echo "Hata! : İşletim Sistemi Algılanamadı"
exit 1
fi
