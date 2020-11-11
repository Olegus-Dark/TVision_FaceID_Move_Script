@echo off
chcp 1251
color 3
echo.			   _____ __          _ __                 ______            _____      
echo.			  / ___// /_  ____ _(_) /_____ _____     / ____/___  ____  / __(_)___ _
echo.			  \__ \/ __ \/ __ `/ / __/ __ `/ __ \   / /   / __ \/ __ \/ /_/ / __ `/
echo.			 ___/ / / / / /_/ / / /_/ /_/ / / / /  / /___/ /_/ / / / / __/ / /_/ / 
echo.			/____/_/ /_/\__,_/_/\__/\__,_/_/ /_/   \____/\____/_/ /_/_/ /_/\__, /  
echo.			                                                              /____/   
chcp 1251
:: Копируем целиком папки с их содержимым
taskkill /f /im tvision.exe
timeout 3
xcopy /s /e /y /i "%localappdata%\Programs\TVision\app\faceid1\*" "E:\backup\faceid1\"												
xcopy /s /e /y /i "%localappdata%\Programs\TVision\app\faceid2\*" "E:\backup\faceid2\"												
xcopy /s /e /y /i "%localappdata%\Programs\TVision\app\faceid3\*" "E:\backup\faceid3\"												
xcopy /s /e /y /i "%localappdata%\Programs\TVision\app\faceid4\*" "E:\backup\faceid4\"												
xcopy /s /e /y /i "%localappdata%\Programs\TVision\app\faceid5\*" "E:\backup\faceid5\"												
xcopy /s /e /y /i "%localappdata%\Programs\TVision\app\faceid6\*" "E:\backup\faceid6\"



:: Копируем FaceID_2 на FaceID_1 без замены настроек (без settings.json)
xcopy /s /e /y /i /exclude:lst.txt  "%localappdata%\Programs\TVision\app\faceid2\*" "%localappdata%\Programs\TVision\app\faceid1\*"
timeout
cd C:\Users\User\AppData\Local\Programs\TVision\
start TVision.exe "app"