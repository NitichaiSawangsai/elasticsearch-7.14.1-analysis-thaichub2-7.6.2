FROM elasticsearch:7.14.1 AS elasticsearch

ENV discovery.type=single-node

WORKDIR /usr/share/elasticsearch

COPY ./export ./elasticsearch-analysis-thaichub3/export

RUN elasticsearch-plugin install --batch file:///usr/share/elasticsearch/elasticsearch-analysis-thaichub3/export/analysis-thaichub2-7.14.1.zip

RUN elasticsearch-plugin install --batch analysis-icu

RUN elasticsearch-plugin list
