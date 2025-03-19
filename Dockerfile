# Базовый образ с V2Ray
FROM v2fly/v2fly-core:latest

# Установка bash
RUN apk add --no-cache bash

# Создаем каталог для конфигурации и логов
RUN mkdir -p /etc/v2ray /var/log/v2ray

# Копируем конфигурационный файл в контейнер
COPY config.json /etc/v2ray/config.json
COPY cert.pem /etc/v2ray/cert.pem
COPY key.pem /etc/v2ray/key.pem

# Запускаем V2Ray с конфигурационным файлом
CMD ["run", "-config", "/etc/v2ray/config.json"]

