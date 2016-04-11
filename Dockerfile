FROM elasticsearch

RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install polyfractal/elasticsearch-inquisitor

USER elasticsearch

CMD elasticsearch \
  --user=elasticsearch \
  --cluster.name=unicast \
  --network.publish_host=$ES_HOST \
  --discovery.zen.ping.multicast.enabled=false \
  --discovery.zen.ping.unicast.hosts=$OTHER_HOST \
  --discovery.zen.ping.timeout=3s \
  --discovery.zen.minimum_master_nodes=1
