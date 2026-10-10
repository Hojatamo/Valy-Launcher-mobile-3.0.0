set -e
mkdir -p app/src/main/assets/icons app/src/main/java/com/valy/launcher app/src/main/res/values
for d in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  mkdir -p app/src/main/res/mipmap-$d
  mv ic_$d.png app/src/main/res/mipmap-$d/ic_launcher.png
done
mv index.html manifest.webmanifest app/src/main/assets/
mv icon-192.png icon-512.png icon-maskable-512.png apple-touch-icon.png app/src/main/assets/icons/
mv MainActivity.java app/src/main/java/com/valy/launcher/
mv AndroidManifest.xml app/src/main/
mv styles.xml app/src/main/res/values/
mv app_build.gradle app/build.gradle
