# Hapus semua bagian directory public_html dan build web
rm -rf ./build/web/*
rm -rf ./public_html/*

# Compile flutter to build 
flutter build web --web-renderer html --release

# Copy Project to public html
cp -r ./build/web/* ./public_html