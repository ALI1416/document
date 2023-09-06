# ElasticSearch

## 索引

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices.html>
- `索引`相当于MySQL中的`表`

### 新增索引

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html>
- Method：`PUT`
- URL：`http://127.0.0.1:9200/article`
  - `article`：`索引名`
- Body：

```json
{
  "mappings": {
    "properties": {
      "id": {
        "type": "long",
        "index": false
      },
      "title": {
        "type": "text",
        "analyzer": "standard"
      },
      "content": {
        "type": "text",
        "analyzer": "standard"
      }
    }
  }
}
```

- `mappings`：`映射`
  - `properties`：`属性`相当于MySQL中的`字段`
    - `type`：`数据类型`
      - `binary`：`二进制`
      - `boolean`：`布尔`
      - `date`：`时间`
      - `text`：`文本`
      - `keyword`：`关键字`
      - `数字类型`
        - `byte`：`比特`
        - `short`：`短整形`
        - `integer`：`整形`
        - `long`：`长整型`
        - `unsigned_long`：`无符号长整型`
        - `half_float`：`半精度浮点`
        - `float`：`单精度浮点`
        - `double`：`双精度浮点`
        - `scaled_float`：`缩放浮点`
    - `index`：`是否对字段进行索引`(默认true)
    - `analyzer`：`解析器`
      - `standard`：`默认`
      - `standard`：`默认`

- Response：

```json
{
  "acknowledged": true,
  "shards_acknowledged": true,
  "index": "article"
}
```

- `acknowledged`：`副本是否创建成功`
- `shards_acknowledged`：`分片是否创建成功`
- `index`：`索引名`

### 获取索引

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-index.html>
- Method：`GET`
- URL：`http://127.0.0.1:9200/article`
  - `article`：`索引名`
- Response：

```json
{
  "article": {
    "aliases": {},
    "mappings": {
      "properties": {
        "content": {
          "type": "text",
          "analyzer": "standard"
        },
        "id": {
          "type": "long",
          "index": false
        },
        "title": {
          "type": "text",
          "analyzer": "standard"
        }
      }
    },
    "settings": {
      "index": {
        "routing": {
          "allocation": {
            "include": {
              "_tier_preference": "data_content"
            }
          }
        },
        "number_of_shards": "1",
        "provided_name": "article",
        "creation_date": "1693971557654",
        "number_of_replicas": "1",
        "uuid": "JOpQs97ySUqLxDVWGxvzVw",
        "version": {
          "created": "8090199"
        }
      }
    }
  }
}
```

### 获取映射

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-get-mapping.html>
- Method：`GET`
- URL：`http://127.0.0.1:9200/article/_mapping`
  - `article`：`索引名`
  - `_mapping`：`映射(固定搭配)`
- Response：

```json
{
  "article": {
    "mappings": {
      "properties": {
        "content": {
          "type": "text",
          "analyzer": "standard"
        },
        "id": {
          "type": "long",
          "index": false
        },
        "title": {
          "type": "text",
          "analyzer": "standard"
        }
      }
    }
  }
}
```

### 更新映射

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-put-mapping.html>
- Method：`PUT`
- URL：`http://127.0.0.1:9200/article/_mapping`
  - `article`：`索引名`
  - `_mapping`：`映射(固定搭配)`
- Body：

```json
{
  "properties": {
    "email": {
      "type": "keyword"
    }
  }
}
```

- Response：

```json
{
  "acknowledged": true
}
```

### 删除索引

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-delete-index.html>
- Method：`DELETE`
- URL：`http://127.0.0.1:9200/article`
  - `article`：`索引名`
- Response：

```json
{
  "acknowledged": true
}
```

### 存在索引

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-exists.html>
- Method：`HEAD`
- URL：`http://127.0.0.1:9200/article`
  - `article`：`索引名`
- Response：
  - Status：
    - `200`：`存在`
    - `404`：`不存在`

## 文档

### 新增文档

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update.html>
- Method：`POST`
- URL：`http://127.0.0.1:9200/article/_doc/1`
  - `article`：`索引名`
  - `_doc`：`文档(固定搭配)`
  - `1`：`_id`(不提供，随机生成)
- Body：

```json
{
  "id": 1234,
  "title": "标题",
  "content": "内容"
}
```

- Response：

```json
{
  "_index": "article",
  "_id": "1",
  "_version": 1,
  "result": "created",
  "_shards": {
    "total": 2,
    "successful": 1,
    "failed": 0
  },
  "_seq_no": 0,
  "_primary_term": 1
}
```

- `_index`：`索引名`
- `_id`：`_id`
- `_version`：`版本号`
- `result`：`结果`
  - `created`：`新增`
  - `updated`：`更新`
- `_shards`：`索引操作的复制过程的信息`
  - `total`：`索引操作应该在多少个分片副本(主分片和复制分片)上执行`
  - `successful`：`索引操作成功的分片副本数`
  - `failed`：`索引操作失败的分片副本数`
- `_seq_no`：`分配给文档以进行索引操作的序列号(用于确保文档的旧版本不会覆盖新版本)`
- `_primary_term`：`为索引操作分配给文档的主要术语`

### 更新文档

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-update.html>
- Method：`POST`
- URL：`http://127.0.0.1:9200/article/_update/1`
  - `article`：`索引名`
  - `_update`：`更新(固定搭配)`
  - `1`：`_id`
- Body：

```json
{
  "doc": {
    "id": 12345,
    "date": "2023-09-06"
  }
}
```

- `doc`：`文档(固定搭配)`

- Response：

```json
{
  "_index": "article",
  "_id": "1",
  "_version": 2,
  "result": "updated",
  "_shards": {
    "total": 2,
    "successful": 1,
    "failed": 0
  },
  "_seq_no": 3,
  "_primary_term": 1
}
```

### 获取文档

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-get.html>
- Method：`GET`
- URL：`http://127.0.0.1:9200/article/_doc/1`
  - `article`：`索引名`
  - `_doc`：`文档(固定搭配)`
  - `1`：`_id`

- Response：

```json
{
  "_index": "article",
  "_id": "1",
  "_version": 4,
  "_seq_no": 5,
  "_primary_term": 1,
  "found": true,
  "_source": {
    "id": 12345,
    "title": "标题",
    "content": "内容",
    "date": "2023-09-06"
  }
}
```

- `found`：`是否存在`
- `_source`：`内容`

### 删除文档

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-delete.html>
- Method：`DELETE`
- URL：`http://127.0.0.1:9200/article/_doc/1`
  - `article`：`索引名`
  - `_doc`：`文档(固定搭配)`
  - `1`：`_id`

- Response：

```json
{
  "_index": "article",
  "_id": "1",
  "_version": 5,
  "result": "deleted",
  "_shards": {
    "total": 2,
    "successful": 1,
    "failed": 0
  },
  "_seq_no": 7,
  "_primary_term": 1
}
```

- `result`：`结果`
  - `deleted`：`删除`
  - `not_found`：`不存在`

### 批量操作文档

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-bulk.html>
- Method：`POST`
- URL：`http://127.0.0.1:9200/article/_bulk`
  - `article`：`索引名`
  - `_bulk`：`批量操作(固定搭配)`
- Body：

```json
{"create":{"_id":"2"}}
{"id":123,"title":"标题","content":"内容"}
{"update":{"_id":"1"}}
{"doc":{"id":1234,"date":"2023-09-06"}}
{"delete":{"_id":"3"}}

```

- 1-2行新增
- 3-4行更新
- 5行删除
- 6行换行符

- Response：

```json
{
  "took": 59,
  "errors": false,
  "items": [
    {
      "create": {
        "_index": "article",
        "_id": "2",
        "_version": 3,
        "result": "created",
        "_shards": {
          "total": 2,
          "successful": 1,
          "failed": 0
        },
        "_seq_no": 18,
        "_primary_term": 1,
        "status": 201
      }
    },
    {
      "update": {
        "_index": "article",
        "_id": "1",
        "_version": 4,
        "result": "noop",
        "_shards": {
          "total": 2,
          "successful": 1,
          "failed": 0
        },
        "_seq_no": 15,
        "_primary_term": 1,
        "status": 200
      }
    },
    {
      "delete": {
        "_index": "article",
        "_id": "3",
        "_version": 3,
        "result": "not_found",
        "_shards": {
          "total": 2,
          "successful": 1,
          "failed": 0
        },
        "_seq_no": 19,
        "_primary_term": 1,
        "status": 404
      }
    }
  ]
}
```

### 批量查询文档

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-multi-get.html>
- Method：`GET`
- URL：`http://127.0.0.1:9200/article/_mget`
  - `article`：`索引名`(可选)
  - `_mget`：`批量查询(固定搭配)`

- URL：`http://127.0.0.1:9200/article/_mget`

- Body：

```json
{
  "ids" : ["1", "2"]
}
```

或者

```json
{
  "docs": [
    {
      "_id": "1"
    },
    {
      "_id": "2"
    }
  ]
}
```

- Response：

```json
{
  "docs": [
    {
      "_index": "article",
      "_id": "1",
      "_version": 4,
      "_seq_no": 15,
      "_primary_term": 1,
      "found": true,
      "_source": {
        "id": 1234,
        "title": "标题",
        "content": "内容",
        "date": "2023-09-06"
      }
    },
    {
      "_index": "article",
      "_id": "2",
      "_version": 3,
      "_seq_no": 18,
      "_primary_term": 1,
      "found": true,
      "_source": {
        "id": 123,
        "title": "标题",
        "content": "内容"
      }
    }
  ]
}
```

- URL：`http://127.0.0.1:9200/_mget`

- Body：

```json
{
  "docs": [
    {
      "_index": "article",
      "_id": "1",
      "_source": false
    },
    {
      "_index": "article",
      "_id": "2",
      "_source": [
        "title",
        "content"
      ]
    },
    {
      "_index": "article",
      "_id": "3"
    }
  ]
}
```

- Response：

```json
{
  "docs": [
    {
      "_index": "article",
      "_id": "1",
      "_version": 4,
      "_seq_no": 15,
      "_primary_term": 1,
      "found": true
    },
    {
      "_index": "article",
      "_id": "2",
      "_version": 3,
      "_seq_no": 18,
      "_primary_term": 1,
      "found": true,
      "_source": {
        "title": "标题",
        "content": "内容"
      }
    },
    {
      "_index": "article",
      "_id": "3",
      "found": false
    }
  ]
}
```

## 分析器

- <https://www.elastic.co/guide/en/elasticsearch/reference/current/test-analyzer.html>
- Method：`POST`
- URL：`http://127.0.0.1:9200/_analyze`
- Body：

```json
{
  "analyzer": "whitespace",
  "text": "The quick brown fox."
}
```

- Response：

```json
{
  "tokens": [
    {
      "token": "The",
      "start_offset": 0,
      "end_offset": 3,
      "type": "word",
      "position": 0
    },
    {
      "token": "quick",
      "start_offset": 4,
      "end_offset": 9,
      "type": "word",
      "position": 1
    },
    {
      "token": "brown",
      "start_offset": 10,
      "end_offset": 15,
      "type": "word",
      "position": 2
    },
    {
      "token": "fox.",
      "start_offset": 16,
      "end_offset": 20,
      "type": "word",
      "position": 3
    }
  ]
}
```
