#!/bin/sh
touch /tmp/unrar.log
echo "Rodei" >> /tmp/unrar.log
echo "$TR_TORRENT_DIR" >> /tmp/unrar.log
echo "$TR_TORRENT_NAME" >> /tmp/unrar.log

cd "$TR_TORRENT_DIR/$TR_TORRENT_NAME"
CURRENT_FILE=$(ls | grep rar | xargs echo)

echo $CURRENT_FILE >> /tmp/unrar.log
/usr/bin/python /path/to/get_name.py $TR_TORRENT_NAME

MEDIA_NAME=$(cat /tmp/name.txt)
echo $MEDIA_NAME >> /tmp/unrar.log

if [ $TR_TORRENT_DIR = "/path/to/series" ]; then
    /usr/bin/unrar x $CURRENT_FILE /path/to/Series/$MEDIA_NAME/$TR_TORRENT_NAME/
    echo "Extai uma serie" >> /tmp/unrar.log
else
    /usr/bin/unrar x $CURRENT_FILE $TR_TORRENT_DIR/$TR_TORRENT_NAME
    echo "Extai outra coisa" >> /tmp/unrar.log
fi


echo "Terminei de rodar" >> /tmp/unrar.log
