FROM golang:1.16

EXPOSE 8080

RUN adduser --system app


WORKDIR /usr/src/app


RUN mkdir /usr/src/app/tmp
ENV GOTMPDIR=/usr/src/app/tmp
RUN chown -R app /usr/src/app

#ENV REQUEST_ORIGIN="http://localhost:5000"
USER app

COPY . .

RUN go build && go test .

CMD ./server
