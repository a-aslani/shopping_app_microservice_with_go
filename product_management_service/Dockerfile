FROM golang:1.22.5-alpine as builder

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-X 'main.Version=v1.0.0'" ./cmd/product

CMD ["./product"]