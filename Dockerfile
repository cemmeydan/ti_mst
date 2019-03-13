FROM dynverse/dynwrapr:v0.1.0

ARG GITHUB_PAT

RUN R -e 'devtools::install_cran("igraph")'

RUN R -e 'devtools::install_cran("mclust")'

COPY definition.yml run.R example.h5 /code/

ENTRYPOINT ["/code/run.R"]
