### Установка

Вместе с установленным докером нужен Compose V2, который интегрирован в Docker CLI и находится в пакете `docker-compose-plugin`, работает с помощью вызова `docker compose`.

1. Создаем папку docker в которую клонируем этот репозиторий
2. В папке docker создаем `.env` файл по аналогии с `.env.example`
3. На одном уровне с папкой docker создаем папку с таким же названием, как `PROJECT_NAME` из `.env` файла, куда клонируем репозиторий CMS
4. Заходим в папку docker и выполняем `./start.sh`

После запуска станут доступны (все порты указываются в `.env`):

1. Сайт: `http://localhost:16000`
2. PhpMyAdmin: `http://localhost:16004`
3. MailHog: `htts://localhost:16003`

Настройки базы:

- название `cms`
- хост `database`
- пользователь `user`, пароль `password`
- кодировка `utf8mb4_unicode_ci`

### Author

---

<table>
  <tr>
    <td valign="center" align="center"><img src="http://www.gravatar.com/avatar/bf12d44182c98288015f65c9861903aa?s=250"></td>
    <td valign="top">
        <h4>Borisov Evgeniy
        <br />
        Agel_Nash</h4>
        <br />
        Laravel, MODX, Security Audit
        <br />
        <br />
        <br />
        <br />
        <small>
            <a href="https://agel-nash.ru">https://agel-nash.ru</a>
            <br />
            <strong>Telegram</strong>: <a href="https://t.me/Agel_Nash">@agel_nash</a>
            <br />
            <strong>Email</strong>: laravel@agel-nash.ru
        </small>
    </td>
    <td valign="top">
        <h4>Donation<br /><br /></h4>
        <br />
        <strong>ЮMoney</strong>: <a href="https://yoomoney.ru/to/41001299480137">41001299480137</a><br />
    </td>
  </tr>
</table>
