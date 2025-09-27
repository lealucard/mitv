@echo off
setlocal
cd /d %~dp0
IF EXIST gradlew.bat (
  call gradlew.bat clean :app:assembleDebug
) ELSE (
  echo No se encontro gradlew.bat, usando Gradle del sistema si existe...
  gradle clean :app:assembleDebug
)
IF EXIST app\build\outputs\apk\debug\app-debug.apk (
  echo APK listo: app\build\outputs\apk\debug\app-debug.apk
) ELSE (
  echo ERROR: No se encontro el APK. Revisa la consola para el detalle.
  exit /b 1
)
