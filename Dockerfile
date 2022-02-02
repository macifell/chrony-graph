FROM debian:bullseye

RUN apt update && \
    apt install -y bc perl libdatetime-perl gnuplot-nox rsync locales && \
    apt clean && \
    rm -rf /var/lib/apt/lists
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen
RUN mkdir /app /web
COPY . /app/

WORKDIR /app
CMD [ "/app/chrony-graph-loop" ]
