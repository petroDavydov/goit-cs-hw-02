# Як буде працювати додаток

### Поміняй назву файлу env.template.txt  на-->.env у корені додатку, та додайnt до нього слідуючі дані

```
POSTGRES_DB= тут має бути база даних яка створюється при запуску Postgres(за звичай її називають app, rest_app, pstgrs_app  і подібне)
POSTGRES_USER=  ім'я користувача(звичайне юзернейм яке ти обереш)
POSTGRES_PASSWORD= пароль який ти будеш використовувати
POSTGRES_HOST= хост на якому працює Postgres, сервіс у docker-compose.yml
POSTGRES_PORT= порт на якому слухають запит

=FastAPI=
APP_PORT= внутрішній порт на якому відкривається додаток

```

#### якщо буде така помилка:
 - failed to solve: error from sender: open /home/username/way-to/postgres-data: permission denied - це значить ти працюєш в репозиторії який не є твоїм і не склонував його вірно, щоб працювати тобі потрібно виконувати команду 
  ```
    sudo chmod -R 755 ./postgres-data

  ```

#### цю команду треба буде використовувати для зміни прав, щоб програма запрацювала:
```
sudo chown -R $USER:$USER ./postgres-data
```

#### але все рівно це не твоє репо... Спробуй zip-нути і скопіювати потрібні папки.

  ### Реультат роботи Docker:

#### docker-compose build 

![build](./assets/build.png)

#### docker-compose up (1)

![composeup1](./assets/composeup1.png)

#### docker-compose up (2)

![composeup2](./assets/composeup2.png)

  
#### open in browser

![openbrowser](./assets/openbrowser.png)

#### check in browser

![checkingbrowser](./assets/checkinbrowser.png)

#### stop working

![stopworking](./assets/stopworking.png)

#### docker-compose down -v

![remove](./assets/remove.png)
