#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if [[ -f "./gradlew" ]]; then
  ./gradlew clean :app:assembleDebug
else
  gradle clean :app:assembleDebug
fi
echo "APK listo: app/build/outputs/apk/debug/app-debug.apk"
