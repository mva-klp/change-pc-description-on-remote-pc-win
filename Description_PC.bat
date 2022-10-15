@Echo Off
Set /P $InputPC="Input PC name: "
echo %$InputPC%
Set /P $InputDescr="Input Description: "
echo %$InputDescr%
rem Создаем файл реестра, содержащий Description, на диске С машины с которой будем менять описание удаленной машины
echo reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters /v srvcomment /t REG_SZ /d "%$InputDescr%" /f > C:\reg.bat
rem Копируем готовый файл на удаленную машину
xcopy "C:\reg.bat" "\\%$InputPC%\c$"
rem Запускаем процесс записи исправления в реестре на удаленной машине
wmic /node:"%$InputPC%" process call create "C:\reg.bat"
rem Пауза для ожидания отработки процесса
pause
rem Подчищаем за собой
del /f /q "C:\reg.bat"
del /f /q "\\%$InputPC%\c$\reg.bat"
echo reg files was deleted
pause
