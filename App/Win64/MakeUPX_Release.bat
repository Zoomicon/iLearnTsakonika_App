copy Release\iLearnTsakonika_App.exe iLearnTsakonika_App.x64.exe
del iLearnTsakonika_App.x64.upx.exe
upx -9 -o iLearnTsakonika_App.x64.upx.exe iLearnTsakonika_App.x64.exe
@pause
