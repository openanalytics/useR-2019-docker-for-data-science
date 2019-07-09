
FROM openanalytics/r-base

LABEL maintainer="daan.seynaeve@openanalytics.eu"

RUN R -q -e "install.packages(c('rmarkdown'), repos='https://cloud.r-project.org')"

RUN R -q -e "install.packages(c('httr'), repos='https://cloud.r-project.org')"

RUN mkdir -p /workdir

WORKDIR /workdir

COPY weather.Rmd weather.Rmd

