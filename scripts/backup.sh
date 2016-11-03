FILE=sample-`date +"%Y%m%d-%H"`.sql
DBSERVER=127.0.0.1
DATABASE=sample_test
USER=root
PASS=Data1234

mysqldump --opt --user=${USER} --password=${PASS} ${DATABASE} > ${FILE}

gzip $FILE

echo "${FILE}.gz was created:"
ls -l ${FILE}.gz

rsync ${FILE}.gz ec2-user@52.210.228.197:/home/ec2-user/backups
