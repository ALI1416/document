# ElasticSearch

## 索引

`索引`相当于MySQL中的`表`

### 新增

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
  - ``

- Response：

  ```json
  {
    "acknowledged": true,
    "shards_acknowledged": true,
    "index": "article"
  }
  ```

  - `acknowledged`：``
  - `shards_acknowledged`：``
  - `index`：``

## 文档

### 新增

- Method：`POST`
- URL：`http://127.0.0.1:9200/article/_doc/1`
  - `article`：`索引名`
  - `_doc`：`固定`
  - `1`：`_id`
- Body：

  ```json
  {
    "id": 1,
    "title": "小李飞刀",
    "content": "小李飞刀，例无虚发"
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
