# Postgres-practice 

1. Navigate <a href=https://www.postgresqltutorial.com/postgresql-sample-database/>here<a> and download database backup zip file
2. Extract to tar
3. Run docker-compose up -d 
4. ```bash 
    docker cp <download directory>/dvdrental.tar postgres:/home
    ```
5. Shell into postgres container 
```bash docker exec -it postgres bash```

6. ```bash pg_restore -U me -d newdvdrental -v "/home/dvdrental.tar" -W```
7. Go to localhost:5555 in your brower, log into pgadmin with the environmental variables specified in the docker-compose file