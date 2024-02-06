# Scrypy-in-termux-and-vnc-server

# penjelasan
script dalam repository ini dibuat untuk meremot modem hp yang sudah terhubung dengan openwrt melalui adb, kita bisa meremot modem hp tersebut dengan scrypy dan termux, untuk tampilan nya kita menggunakan vnc viewer

# keterbatasan
script di repository ini masih banyak kekurangan dan mungkin bisa di kembangkan lagi

# instalasi termux
untuk termux nya download di sini https://f-droid.org/id/packages/com.termux/

untuk vnc viewer nya download di sini 
https://play.google.com/store/apps/details?id=com.realvnc.viewer.android

```
pkg update && pkg upgrade -y
pkg install x11-repo -y
pkg install tigervnc -y 
pkg install android-tools -y
‌pkg install openssh -y
pkg install scrcpy -y
