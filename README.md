# Hadoop Docker

Cài đặt Apache Hadoop bằng Docker...

## Cài đặt

```bash
./setup.sh
```

Khởi động

```bash
docker-compose up -d
```

Tắt

```bash
docker-compose down
```

Try cập vào `namenode`

```bash
docker-compose exec -it namenode bash
```
