FROM golang:1.18.10-alpine3.16 AS builder

WORKDIR /go/app
COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -v -o app main.go


FROM alpine:3.16
COPY --from=builder /go/app/ .

CMD ["/app"]
