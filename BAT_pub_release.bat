@echo off

set /p version="Version : "

del win_x64.tar.gz 2>nul
del lin_x64.tar.gz 2>nul

powershell -Command "Tar -czf win_x64.tar.gz bin lib"
powershell -Command "Tar -czf lin_x64.tar.gz bin lib"

gh release create %version% .\win_x64.tar.gz .\lin_x64.tar.gz --repo "lololoh2004/spirv_bin" --title "SPIRV bin update" --notes "SPIRV bin update"

del win_x64.tar.gz 2>nul
del lin_x64.tar.gz 2>nul

pause
