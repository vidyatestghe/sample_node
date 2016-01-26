FROM drydock/u12nod:prod

RUN mkdir -p /tmp/logs
ADD . /src
