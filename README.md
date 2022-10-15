# change-pc-description-on-remote-pc-win
Script for change the field "Computer description" in settings of a remote windows PC.
This script for situation if you have disabled remote regedit, can't start remote pc utils due to network security.
If you have enable remote regedit, enough to start regedit on the remote PC and change "srvcomment" parameter in branch HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters
!You must run script as domain Administrator!

Скрипт для изменения поля "Описание компьютера" в свойствах удаленного ПК с Windows.
Этот скрипт для ситуации, когда вы отключили удаленное управление реестром, не можете запустить утилиты для удаленного управления ПК из-за сетевой безопасности.
Если у вас не отключено удаленное управление реестром, то достаточно запустить regedit на удаленном ПК и изменить параметр «srvcomment» в ветке HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters
!Запуск скрипта от имени Администратора домена!
