::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NTy7OXJq04SNA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NT84OWDoFQYUPI2Nd+Vi/rcHPMH61fwO5M10xo=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

call :start

:start
setlocal
cls
call :print 0 
call :print 2
call :print 7
set /p var=" - Введите номер операции: "
if %var% equ 1 goto all
if %var% equ 2 goto alldns
if %var% equ 3 goto hard
if %var% equ 4 goto update

:all
setlocal
cls
call :print 0 
call :print 2
call :print 7
goodbyedpi.exe -1



:alldns
setlocal
cls
call :print 0 
call :print 2
call :print 7
goodbyedpi.exe -1 --dns-addr 77.88.8.8 --dns-port 1253



:hard
setlocal
cls
call :print 0 
call :print 2
call :print 7
goodbyedpi.exe -1 -a -m --dns-addr 77.88.8.8 --dns-port 1253


:hard
setlocal
cls
call :print 0 
call :print 2
call :print 7
goodbyedpi.exe -1 -a -m --dns-addr 77.88.8.8 --dns-port 1253



:update
setlocal
cls
call :print 0 
call :print 2
call :print 7
bitsadmin /transfer blacklist https://antizapret.prostovpn.org/domains-export.txt "blacklist.txt"


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

0#.     oooooooo      
0#    OOOOOOOOOOOO      d0b  db    db d0000b. db  db    db  db   .O00b.  d000000b
0#   00000000000000    OV VO `0b  d0' 00  `0D 00 000b  d000 00  d0    0b `~~00~~'
0#  88b    00    d88  OV   VO `0bd0'  00OObY' 00 00`0bd0'00 00 00      0b   00
0#  88    8888    88 00     00  00    00`0b   00 00  00  00 00 d0      0O   00
0#   00000000000000  00OOOOO00  00    00 `00. 00 00      00 00  Yb    O0    00
0#     Vd000000bV    00     00  YP    00   YD YP YP      VY YP   `Y00P'     YP
0#      VVVVVVVV

1#.
1#                  [ Goodbyedpi with Ayrimiot Launcher ]
1#                        [Ayrimiot Evil CORP 2018]
1#.

2#.
2#        Введите режим антиблокировки и нажмите клавишу "ВВОД" или "ENTER"
2#.
2#     1 Обычный  2 Обычный, но с ДНС  3 ХАРДКОР  4 Обновить список Блокировок
2#.

3#. 
3#           [Не закрывайте окно, откройте браузер - пользуйтесь]
3#.