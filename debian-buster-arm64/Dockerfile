ARG PY_VER
ARG PY_SHA

FROM python:${PY_VER}-slim-buster@sha256:${PY_SHA}

RUN apt-get update && \
    apt-get -qq upgrade && \
    apt-get -qq --no-install-recommends install \
        curl openssl jq iproute2 dnsutils net-tools stunnel iperf tcpdump \
        procps vim wget netcat iputils-ping traceroute httping httperf \
        postgresql-client mariadb-client && \
    rm -rf /var/lib/apt/lists/*

# RUN pip install yq

EXPOSE 8000
CMD ["python", "-m", "http.server"]

# CMD ["sleep", "86400"]
# CMD ["/bin/bash"]
