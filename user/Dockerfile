FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S aaagroup
RUN adduser -S -D -h /app aaauser aaagroup
RUN chown -R aaauser:aaagroup /app

USER aaauser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go