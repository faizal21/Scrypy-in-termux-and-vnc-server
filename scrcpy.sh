#!/bin/bash
clear
while :
do
    clear
    echo "================ Menu ================"
    echo "       Disclaimer harap di kill       "
    echo "    semua proses sebelum menjalankan  "
    echo "        adb shell dan vnc server      "
    echo "========> created by faizal <========="
    echo "                                      "
    echo "1. Ssh ke stb"
    echo "2. Koneksikan ke modem hp"
    echo "3. Cek koneksi ke modem hp"
    echo "4. Menjalankan vncserver"
    echo "5. Kill adb devices"
    echo "6. Meremot layar perangkat dengan scrcpy"
    echo "7. List display vncserver"
    echo "8. Kill display vncserver"
    echo "9. Exit"
    echo "======================================"
    read -p "Pilih menu: " choice
    clear
    case $choice in
        1)
            ssh root@192.168.1.1
            ;;
        2)
            adb connect 192.168.42.129
            ;;
        3)
            adb devices
            ;;
        4)
            vncserver
            export DISPLAY=":1"
            ;;
        5)
            adb kill-server
            ;;
        6)
            scrcpy
            ;;
        7)
            vncserver -list
            ;;
	8)
	   vncserver -kill :1
	   ;;	
	9)
	  break
          ;;
    esac
    read -p "Tekan Enter untuk melanjutkan..." enter
done
