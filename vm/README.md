##Виртуальная машина

###Немного терминологии
* хост-машина (host-machine) - ваш ноутбук, компьютер, на котором будет запущена виртуалка
* гест-машина (guest-machine) - сама виртуалка

###Запуск виртульной машины

* Скачать VirtualBox здесь - https://www.virtualbox.org/wiki/Downloads
* Скачать нашу виртуальную машину - TODO:link
* Выполнить импорт нашей виртуалки в VirtualBox
* Зайти в настройки виртуалки (правый клик по ней -> Settings)
* Перейти во вкладку Shared folders
* Настроить оба пути, чтобы смотрели на какую-либо папку хост-машины
* Сохранить
* Запустить
* Убедиться, что видим Ubuntu
* Открыть приложение Files
* Убедиться, что в списке слева есть папка pythondev, которая "смотрит" в папку хост-машины.

###Важные замечания

* Ubuntu 14.04 Trusty Tahr логин = vagrant; пароль = vagrant
* mysql 5.5: логин = root; пароль = 12345.
* Python 2.7.6; Django 1.9.1.
* Путь до pythondev: /home/vagrant/pythondev

###Полезные команды

* Установить пакет: ```sudo apt-get install <package-name>```
* Удалить пакет: ```sudo apt-get purge <package-name>```
* Установить модуль питона: ```sudo pip install <module_name>```
* Удалить модуль питона: ```sudo pip uninstall <module_name>```
* Подключиться к mysql: ```mysql -uroot -p```. Далее оно запросит пароль.
* Проверить версию виртуалки: ```cat /etc/vm-version```
