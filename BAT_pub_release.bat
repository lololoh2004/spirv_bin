@echo off

set /p version="Version : "

del win_x64.tar.gz
del lin_x64.tar.gz

tar -czf win_x64.tar.gz -C bin win_x64
tar -czf lin_x64.tar.gz -C bin lin_x64

gh release create %version% .\win_x64.tar.gz .\lin_x64.tar.gz --repo "lololoh2004/spirv_bin" --title "SPIRV bin update" --notes "SPIRV bin update"

del win_x64.tar.gz
del lin_x64.tar.gz

pause