FROM golang:1.20

COPY . /build
WORKDIR /build
RUN go build -o /app/server
RUN rm -r /build

WORKDIR /app
EXPOSE 8080

ENTRYPOINT [ "/bin/bash", "/app/server" ]

