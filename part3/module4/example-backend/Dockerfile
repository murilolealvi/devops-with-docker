FROM golang:1.16-alpine as builder

RUN adduser --system builder

WORKDIR /build


RUN mkdir /build/tmp && chown -R builder /build && \
    apk add --no-cache gcc musl-dev
ENV GOTMPDIR=/build/tmp

USER builder

COPY . . 

RUN go build && go test .


FROM scratch

EXPOSE 8080
WORKDIR /app

COPY --from=builder /build .

CMD ["./server"]
