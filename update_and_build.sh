# Hapus semua bagian directory public_html dan build web
rm -rf ./build/web/*
rm -rf ./public_html/*

mkdir building_application

# Compile flutter to build 
flutter build web --web-renderer html

# Copy Project to public html
cp -r ./build/web/* ./building_application
