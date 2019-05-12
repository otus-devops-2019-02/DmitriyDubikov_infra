# DmitriyDubikov_infra
DmitriyDubikov Infra repository

ДЗ №12 Ansible-3

На основе созданных плейбуков создали роли

Описали окружение stage и prod

Настроили роль nginx

Научились использовать Ansible Vault для шифрации файлов

Результат можно посмотреть: http://35.195.46.184:9292/

ДЗ №11 Ansible-2 

Научились использовать плейбуки, хендлеры и шаблоны для конфигурации
окружения и деплоя тестового приложения

Научились разделять плейбуки на маленькие сценарии

Создал 2 образа с помощью Packer для ВМ СУБД и приложения

Пересобрали образы поменяв секцию Provision на ansible.

Пересобрали инфраструктуру, чтобы проверить результат.

Результат можно посмотреть: http://35.195.46.184:9292/

ДЗ №10 Ansible-1
Установил ansible и с помощью него выполнил несколько комманд на инстансе ВМ

при запуске ansible-playbook clone.yml получили ошибку, так как каталог такой уже существовал

Комманда ansible app -m command -a 'rm -rf ~/reddit' удалила каталог и после этого репозиторий выгрузился без ошибок

ДЗ №9 Terraform-2

Создал 2 ВМ reddit-app и reddit-db
Научился делить конфиграцию на модули
Проверил соединения с ВМ по SSH с разными настройками из prod и stage


ДЗ №8 Terraform-1

Установил terraform

Подготовил скрипты по созданию и настройке экземпляра ВМ

После добавления через web интерфейс ssh ключа и выполнения terraform apply он удаляется.

ДЗ №7 Packer

Установил packer и собрал образ reddit-base-1555047357

Развернул ВМ eddit-app2.

Внес переменные в файл variables.json и убрал его в .gitignore.

Результат можно посмотреть в http://35.205.217.183:9292/

ДЗ №6

testapp_IP=35.204.140.200 testapp_port=9292

Домашнее задание 6 Создаём инстанс

gcloud compute instances create reddit-app

--boot-disk-size=10GB
--image-family ubuntu-1604-lts
--image-project=ubuntu-os-cloud
--machine-type=g1-small
--tags puma-server
--restart-on-failure --metadata-from-file startup-script=startup_script.sh

Создал скрипты: install_ruby.sh install_mongodb deploy.sh

ДЗ №5
bastion_IP = 34.76.0.203 someinternalhost_IP = 10.132.0.3

Самостоятельное задание: Подключения к someinternalhost в одну команду. ssh -i ~/.ssh/id_rsa -A ddi1@34.76.0.203 -t ssh 10.132.0.3

Дополнительное задание: Подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства, чтобы подключение выполнялось по алиасу someinternalhost.

Необходимо создать файл с настройками ~/.ssh/config

Алиасы для быстрого подключения
Host someinternalhost Hostname 10.132.0.3 User ddi1 ProxyCommand ssh -W %h:%p ddi1@34.76.0.203

Пример запуска:ssh someinternalhost
=======
 --boot-disk-size=10GB
 --image-family ubuntu-1604-lts
 --image-project=ubuntu-os-cloud
 --machine-type=g1-small
 --tags puma-server
 --restart-on-failure
 --metadata-from-file startup-script=startup_script.sh

Создал скрипты:
install_ruby.sh
install_mongodb
deploy.sh
=======

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

