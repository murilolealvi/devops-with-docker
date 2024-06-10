# Improved curler

FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh
RUN apt update && apt install -y curl

ENTRYPOINT ["./script.sh"]
CMD ["helsinki.fi"]

