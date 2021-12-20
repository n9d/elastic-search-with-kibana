# FROM docker.elastic.co/elasticsearch/elasticsearch:7.3.0
FROM elasticsearch:7.6.2
# FROM elasticsearch:7.3.0
RUN elasticsearch-plugin install analysis-kuromoji
