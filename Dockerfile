FROM debian:bullseye

RUN apt update && \
    apt install -y bc perl libdatetime-perl gnuplot-nox rsync && \
    apt clean && \
    rm -rf /var/lib/apt/lists

RUN mkdir /app /web
COPY . /app/

WORKDIR /app
CMD /app/chrony-graph-loop
