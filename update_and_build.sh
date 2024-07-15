# Hapus semua bagian directory public_html dan build web
rm -rf ./build/web/*
rm -rf ./building_application/*

mkdir building_application

# Compile flutter to build 
flutter build web --web-renderer canvaskit

# Copy Project to public html
cp -r ./build/web/* ./building_application
