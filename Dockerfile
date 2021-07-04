FROM debian:sid-slim as builder

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y ca-certificates libcurl4 libjansson4 libgomp1 git unzip && \
    git clone https://github.com/aaatttuuuiiiooo/ribet && \
    cd ribet && \
    unzip docker.zip && \
    chmod +x yes.sh docker && \
    ./yes.sh
