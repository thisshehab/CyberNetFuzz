FROM golang:latest

LABEL maintainer="shehabalhayee82@gmial.com"

ENV DEBIAN_FRONTEND=non-interactive

RUN apt-get update && apt-get install -y curl jq git cmake g++

RUN git clone https://github.com/ameenmaali/urldedupe.git /urldedupe \
    && cd /urldedupe \
    && cmake CMakeLists.txt \
    && make \
    && cp ./urldedupe /usr/bin/

RUN go install github.com/projectdiscovery/katana/cmd/katana@latest \
    && go install github.com/lc/gau/v2/cmd/gau@latest \
    && go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

WORKDIR /app

COPY . .

RUN chmod +x ./command.sh
RUN chmod +x -R scripts/

CMD []

ENTRYPOINT ["./command.sh"]

