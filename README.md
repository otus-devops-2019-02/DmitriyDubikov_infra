# DmitriyDubikov_infra
DmitriyDubikov Infra repository

bastion_IP = 34.76.0.203
someinternalhost_IP = 10.132.0.3

Самостоятельное задание:
Подключения к someinternalhost в одну команду.
ssh -i ~/.ssh/id_rsa -A ddi1@34.76.0.203 -t ssh 10.132.0.3

Дополнительное задание:
Подключения из консоли при помощи команды вида ssh someinternalhost из локальной
консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost.

Необходимо создать файл с настройками
~/.ssh/config 

### Алиасы для быстрого подключения ###
Host someinternalhost
     Hostname 10.132.0.3
     User ddi1
     ProxyCommand ssh -W %h:%p ddi1@34.76.0.203

Пример запуска:ssh someinternalhost
