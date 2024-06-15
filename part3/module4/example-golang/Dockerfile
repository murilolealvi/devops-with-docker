
FROM golang:alpine as builder

WORKDIR /build

RUN adduser --system builder && chown -R builder /build

USER builder

COPY . .

RUN go build -o test main.go


FROM scratch

WORKDIR /app
COPY --from=builder /build/test .

EXPOSE 8000

CMD ["./test"]