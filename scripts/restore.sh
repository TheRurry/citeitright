file="$1"
if ["$1" = '']; then
  echo please give an .gz file
fi
gunzip $file
echo "drop database sample_test; create database sample_test; use sample_test; \. ${file%.*}" | mysql -u root -p
