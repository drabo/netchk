ARG PY_VER
ARG ALP_VER

FROM python:${PY_VER}-alpine${ALP_VER}

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        curl openssl jq iproute2 bind-tools net-tools stunnel iperf tcpdump procps vim wget && \
    rm -rf /var/cache/apk/*

RUN pip install yq

EXPOSE 8000
CMD ["python", "-m", "http.server"]

# CMD ["sleep", "86400"]
