#! /bin/bash
directorio=/home/pi/original/rosaProfana
fswebcam -d /dev/video0 -r 1024x768 --jpeg 95 -F 10 --no-timestamp $directorio/foto.jpg
dispositivo=$(ls -l --sort=time /dev/sd* | head -1 | awk '{print $10}')
umount $dispositivo
mkdir -p /home/pi/$dispositivo
mount $dispositivo /home/pi/$dispositivo/
if mountpoint -q /home/pi/$dispositivo ; then
python $directorio/Programa/blink.py
/usr/bin/play $directorio/iniciocopia.mp3
/usr/bin/play $directorio/musica.mp3 & 
cp -rf /home/pi/original/* /home/pi/$dispositivo/
umount /home/pi/$dispositivo
umount $dispositivo
killall play
python $directorio/Programa/blinkoff.py
/usr/bin/play $directorio/fincopia.mp3
tema=$(ls $directorio/audios/ | shuf -n 1)
/usr/bin/play $directorio/audios/$tema
fi
