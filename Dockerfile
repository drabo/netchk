FROM python:3.8.3-alpine3.12

RUN apk update && \
    apk upgrade && \
    apk add --no-cache curl openssl jq iproute2 bind-tools net-tools stunnel iperf && \
    rm -rf /var/cache/apk/*

RUN pip install yq 

# EXPOSE 8000
# WORKDIR /var/tmp
# CMD ["python", "-m", "http.server"]

CMD ["sleep", "86400"]
