# DmitriyDubikov_infra
DmitriyDubikov Infra repository

testapp_IP=35.204.140.200
testapp_port=9292

Домашнее задание 6
Создаём инстанс

gcloud compute instances create reddit-app
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
