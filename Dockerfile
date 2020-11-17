# Mix of https://github.com/MethodsConsultants/r-packaging and https://github.com/benbel/scribe

FROM r-base:latest

MAINTAINER benjello

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libssl-dev \
  libcurl4-openssl-dev \
  libssh2-1-dev \
  libxml2-dev \
  && install2.r --error \
    devtools \
    roxygen2


RUN apt --yes install texlive-full latexmk pandoc r-base r-cran-tidyverse r-cran-rmarkdown python-pip
RUN Rscript -e 'install.packages("configr")'

ENV LANG C.UTF-8
