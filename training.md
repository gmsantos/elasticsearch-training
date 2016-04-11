# ElasticSearch Training

## NoSQL
- [NoSQL Distilled][1]

## Por que [ElasticSearch][2]?
- Tempo Real
- Flexível
- Livre de esquema
- Muito escalável

## Permissões para Busca
- Dados customizados na busca de cada usuário
- Redis vs Titan/Cassandra (grafos)

## Palavras-chave
- Cluster
- Lucene
- Índice
- Mapeamento
- Tipo
- Score
- TD-IDF

## Ferramentas
  - Chrome Extension [Sense][3]
  - [ElasticSearch Head][4]

## Artigos
 - [Schemaless][5]

## Observações
Para evitar erros de `high disk watermark`, usar o comando:

```
PUT _cluster/settings
{
  "transient": {
    "cluster.routing.allocation.disk.threshold_enabled": "false"
  }
}
```

[1]: http://www.amazon.com/NoSQL-Distilled-Emerging-Polyglot-Persistence-ebook/dp/B0090J3SYW/
[2]: https://github.com/elastic/elasticsearch
[3]: https://chrome.google.com/webstore/detail/sense-beta/lhjgkmllcaadmopgmanpapmpjgmfcfig
[4]: https://github.com/mobz/elasticsearch-head
[5]: http://martinfowler.com/articles/schemaless/
