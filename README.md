# aircrafts_data

networks:
      - mynetwork
  elasticsearch:
    image: docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}
    environment:
      - "discovery.type=single-node"
    ports:
      - "9200:9200"
    networks:
      - mynetwork
  kibana:
    image: docker.elastic.co/kibana/kibana:${ELASTIC_VERSION}
    ports:
      - "5601:5601"
    depends_on:
      - elasticsearch
    networks:
      - mynetwork

networks:
  mynetwork:
    driver: bridge
