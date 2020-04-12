@echo off

call 0-include.cmd

if not exist "%WORK%" got eof
if not exist "%UNPACK%_DAT" goto eof

set TMPFILE=%WORK%\%RANDOM%

echo dump strings:
echo from *.DAT...
for /r "%UNPACK%_DAT" %%i in (*.DAT) do (
    %LUAPATH% find_all_strings.lua "%%i" >> "%TMPFILE%"
)

goto skip

echo from *.ANIMATION
for /r "%UNPACK%_ANIMATION" %%i in (*.ANIMATION) do (
    %LUAPATH% find_all_strings.lua "%%i" >> "%TMPFILE%"
)
echo from *.IMAGESET
for /r "%UNPACK%_IMAGESET" %%i in (*.IMAGESET) do (
    %LUAPATH% find_all_strings.lua "%%i" >> "%TMPFILE%"
)

:skip

echo sort and remove duplicates...
%LUAPATH% remove_duplicates.lua "%TMPFILE%" > "%WORK%\list_all_string.txt"
del /q "%TMPFILE%"

echo generate original language table...
%LUAPATH% generate_lang.lua "%WORK%\list_all_string.txt" > "%WORK%\lang_original.lua"

echo generate map of IDs...
%LUAPATH% make_ids_map.lua "%WORK%\lang_original.lua" > "%WORK%\lang_original.pbm"

echo find duplicates IDs...
%LUAPATH% find_broken_ids.lua "%WORK%\list_all_string.txt" duplicate > "%WORK%\list_duplicated_ids.lua"

echo find conflicted IDs...
%LUAPATH% find_broken_ids.lua "%WORK%\list_all_string.txt" conflict > "%WORK%\list_conflicted_ids.lua"

:eof
pause
