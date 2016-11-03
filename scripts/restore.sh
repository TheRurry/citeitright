file="$1"
if ["$1" = '']; then
  echo please give an .gz file
fi
gunzip $file
echo "drop database citeitright; create database citeitright; use citeitright; \. ${file%.*}" | mysql -u root -p
