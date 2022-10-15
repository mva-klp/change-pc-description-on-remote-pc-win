@Echo Off
Set /P $InputPC="Input PC name: "
echo %$InputPC%
Set /P $InputDescr="Input Description: "
echo %$InputDescr%
echo reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters /v srvcomment /t REG_SZ /d "%$InputDescr%" /f > C:\reg.bat
xcopy "C:\reg.bat" "\\%$InputPC%\d$"
wmic /node:"%$InputPC%" process call create "D:\reg.bat"
pause
del /f /q "C:\reg.bat"
del /f /q "\\%$InputPC%\d$\reg.bat"
echo reg files was deleted
pause