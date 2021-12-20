
# elastic search with kibana

- kuromoji入り

# 起動方法

- `sysctl -w vm.max_map_count=262144` で容量確保(そのままでやると容量足りなくてes01が落ちる)
- `docker-compose up`
- [http://localhost:5601/](http://localhost:5601/)をアクセス
- DevToolsのConsoleで検索できる（複数文打てて記憶される）



# elastic searchに直接問い合わせ

```
$ curl -X GET "localhost:9200/_cat/health?v&pretty"
epoch      timestamp cluster        status node.total node.data shards pri relo init unassign pending_tasks max_task_wait_time active_shards_percent
1588857144 13:12:24  docker-cluster green           2         2      0   0    0    0        0             0                  -                100.0%
```

# 参考URL

https://qiita.com/kiyokiyo_kzsby/items/344fb2e9aead158a5545

Dockerfileの`docker.elastic.co/elasticsearch/elasticsearch:7.3.0`を
`FROM elasticsearch:最新`に変更
