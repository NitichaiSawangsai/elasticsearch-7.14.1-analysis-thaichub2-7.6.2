FROM elasticsearch:7.14.1 AS elasticsearch
ENV discovery.type=single-node

WORKDIR /usr/share/elasticsearch

RUN elasticsearch-plugin install --batch analysis-icu

COPY ./export/ ./temp-export/
RUN mkdir -p ./elasticsearch-analysis-thaichub3 && \
    latest_file=$(ls -t ./temp-export/analysis-thaichub2-*.*.*.zip | head -n 1) && \
    cp "$latest_file" ./elasticsearch-analysis-thaichub3/
RUN rm -rf ./temp-export/

RUN latest_file=$(ls ./elasticsearch-analysis-thaichub3/ | head -n 1) && \
    elasticsearch-plugin install --batch "file:///usr/share/elasticsearch/elasticsearch-analysis-thaichub3/$latest_file"
