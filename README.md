# avro-tools

```bash

export IMAGE=ri52dksla/avro-tools:latest

docker run -i ${IMAGE} random --schema '{"namespace": "example.avro", "type": "record", "name": "User", "fields": [ {"name": "name", "type": "string"}, {"name": "favorite_number", "type": ["int", "null"]}, {"name": "favorite_color", "type": ["string", "null"]} ] }' - --count 10 | \
docker run -i ${IMAGE} tojson --pretty -
```
