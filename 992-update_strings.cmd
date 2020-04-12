@echo off

call 0-include.cmd

if not exist "%WORK%" goto eof
if not exist "%TRANSLATE%_DAT" got eof
if not exist "%WORK%\t_list_duplicated_ids.lua" goto eof

set TMPFILE=%WORK%\%RANDOM%

for /r "%TRANSLATE%_DAT" %%i in (*.LUA) do (
    %LUAPATH% lua2dat.lua "%%i" "%TMPFILE%" "%WORK%\t_list_duplicated_ids.lua"
    %LUAPATH% dat2lua.lua "%TMPFILE%" "%%i"
)
del /q "%TMPFILE%"

:eof
pause
