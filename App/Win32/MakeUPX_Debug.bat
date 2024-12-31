copy Debug\iLearnTsakonika_App.exe .
del iLearnTsakonika_App.upx.exe
upx -9 -o iLearnTsakonika_App.upx.exe iLearnTsakonika_App.exe
@pause
