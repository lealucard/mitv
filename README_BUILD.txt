Build rápido del APK (Debug)
================================

Opción 1 — Android Studio
-------------------------
1) Abrí el proyecto en Android Studio.
2) Menu: Build > Build APK(s).
3) El APK queda en: app/build/outputs/apk/debug/app-debug.apk

Opción 2 — Consola (Windows)
----------------------------
1) Abrí una consola en la carpeta del proyecto.
2) Ejecutá:
   build-apk.bat
   (o) .\gradlew clean :app:assembleDebug

Opción 3 — Consola (macOS/Linux)
--------------------------------
1) En la carpeta del proyecto:
   ./build-apk.sh
   (o) ./gradlew clean :app:assembleDebug

Notas
-----
- Si falla el wrapper (gradlew) regeneralo desde Android Studio: 
  Gradle > Wrapper > Upgrade, o instalá Gradle y usá 'gradle' directamente.
- Requiere JDK 17+ y Android SDK actualizado.
