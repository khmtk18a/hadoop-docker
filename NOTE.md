## Xóa toàn bộ container

```bash
docker rm -f $(docker ps -aq)
```

```fish
docker rm -f (docker ps -aq)
```

## Hiện thông tin các datanode đang hoạt động

```bash
hdfs dfsadmin -report
```