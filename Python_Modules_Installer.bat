@echo off

call :start

:print
  setlocal
  set first=1
  for /f "tokens=2* delims=#" %%s in ('findstr.exe /b /l "%1#" "%~f0"') do (
    if "%%s"=="~" (
      pause
      cls
      set first=1
    ) else (
      if !first! equ 1 (
        if not "%~2"=="" (
          call :writeLn %~2 "%%s"
          if not "%%s"=="." set first=0
        ) else echo%%s
      ) else echo%%s
    )
  )
endlocal & exit /b

:start
setlocal
cls
call :print 0 
call :print 2
call :print 7
set /p var=" - Введите номер операции: "
if %var% equ 1 goto install
if %var% equ 2 goto uninstall
if %var% equ 3 goto modules

:install
setlocal
cls
call :print 0
call :print 3
call :print 7
set /p var=" : "
python.exe Scripts\pip.exe install %var%
pause
goto :start

:uninstall
setlocal
cls
call :print 0
call :print 4
call :print 7
set /p var=" : "
python.exe Scripts\pip.exe uninstall %var%
pause
goto :start

:modules
setlocal
cls
call :print 0
call :print 4
call :print 5
python.exe Scripts\modules.py > %USERPROFILE%\Desktop\PythonModules.txt
%windir%\system32\notepad.exe %USERPROFILE%\Desktop\PythonModules.txt
pause
goto :start


0#.     oooooooo      
0#    OOOOOOOOOOOO      d0b  db    db d0000b. db  db    db  db   .O00b.  d000000b
0#   00000000000000    OV VO `0b  d0' 00  `0D 00 000b  d000 00  d0    0b `~~00~~'
0#  88b    00    d88  OV   VO `0bd0'  00OObY' 00 00`0bd0'00 00 00      0b   00
0#  88    8888    88 00     00  00    00`0b   00 00  00  00 00 d0      0O   00
0#   00000000000000  00OOOOO00  00    00 `00. 00 00      00 00  Yb    O0    00
0#     Vd000000bV    00     00  YP    00   YD YP YP      VY YP   `Y00P'     YP
0#      VVVVVVVV

1#.
1#     [Программа по установке Модулей для Портабельного Python by Ayrimiot]
1#                        [Ayrimiot Evil CORP 2018]
1#.

2#.
2#         Введите номер операции и нажмите клавишу "ВВОД" или "ENTER"
2#.
2#         1 Установка Модуля   2 Удаление Модуля    3 Показать Модули
2#.

3#. 
3#                        [Введите имя нового модуля]
3#.

4#.
4#                     [Введите имя модуля для удаления]
4#.

5#.
5#                        [...Распечатка модулей...]
5#.

6#.
6#                   [Модули сохранены в файл modules.txt]
6#.

7#.