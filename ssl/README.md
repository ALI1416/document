# SSL

## OpenSSL

### 生成CA证书

- 生成私钥
`openssl genrsa -out ca.key 2048`
- 生成签名请求
`openssl req -new -key ca.key -out ca.csr`
  - `Country Name` 国家名(2个字母代码)
  - `State or Province Name` 州或省名称(全名)
  - `Locality Name` 地区名称(如城市)
  - `Organizational Unit Name` 组织名称(如公司)
  - `Common Name` 通用名称(服务器名称或您的名称)
    - CA证书不可与普通证书相同
    - CA证书推荐填写`0.0.0.0`
    - 服务端证书推荐与域名一致
    - 客户端证书任意
  - `Email Address` 电子邮箱
  - `A challenge password` 密码
  - `An optional company name` 可选的公司名称
- 生成证书
`openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt -days 3650`

### 生成普通证书

- `openssl genrsa -out server.key 2048`
- `openssl req -new -key server.key -out server.csr`
- `openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 3650`

### 校验证书

`openssl verify -CAfile ca.crt server.crt`
