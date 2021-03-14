FROM r-base

LABEL version="0.0.1" maintainer="JJMerelo@GMail.com"

RUN apt-get update \
    && apt-get install -y libcurl4-openssl-dev r-cran-ggplot2 libssl-dev r-cran-httr git\
    && R -e "install.packages(c( 'plotly', 'vistime'))"

WORKDIR /home/docker

ENTRYPOINT ["Rscript"]
