#!/bin/zsh

ct=$(TZ="Iran" date | awk '{print $4}'| rev|cut -c 4- | rev )
times="01:00;01:01;01:02;01:10;01:11;01:23;02:00;02:02;02:04;02:13;02:20;02:22;02:31;02:46;03:00;03:03;03:06;03:12;03:21;03:30;03:33;04:00;04:04;04:08;04:40;04:44;05:00;05:05;05:50;05:55;06:00;06:06;07:00;07:07;08:00;08:08;08:16;09:00;09:09;09:18;10:00;10:01;10:10;10:20;11:00;11:11;11:22;12:00;12:05;12:12;12:21;12:24;12:34;13:00;13:57;13:13;13:31;14:00;14:14;14:41;15:00;15:15;15:51;16:00;16:16;16:20;17:00;17:17;18:00;18:18;19:00;19:19;20:00;20:02;20:20;20:48;21:00;21:12;21:21;22:00;22:22;23:00;23:23;23:32;23:45;00:00;24:00;23:59"
echo $ct
channel="کافه_گپ"
if [[ $times ==  *"$ct"* ]]; then
    echo "sending message to $channel !";
    echo "msg $channel  $ct";
    (sleep 1; echo "channel_list"; sleep 1; echo "msg $channel  $ct") | /Users/geb000g/programs/telegram-cli/tg/bin/telegram-cli -W -v -k /Users/geb000g/programs/telegram-cli/tg/server.pub 
    echo $?
fi
