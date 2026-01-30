## Command to fix database issue with Group by clause

```sh
docker exec -it vb-mysql mysql -uroot -ppass -e "SET GLOBAL sql_mode=(SELECT REPLACE(@@GLOBAL.sql_mode,'ONLY_FULL_GROUP_BY',''));"
```