FROM elasticsearch:7.14.1 AS elasticsearch
ENV discovery.type=single-node

# COPY ./export /elasticsearch-analysis-thaichub2
# RUN elasticsearch-plugin install --batch file:///elasticsearch-analysis-thaichub2/export/analysis-thaichub2-7.14.1.zip

RUN elasticsearch-plugin install --batch analysis-icu

RUN elasticsearch-plugin list
