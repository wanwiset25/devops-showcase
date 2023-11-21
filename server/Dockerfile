FROM golang:1.20

COPY . /build
WORKDIR /build
RUN go build -o /app/server
RUN rm -r /build

COPY start.sh /app/start.sh
WORKDIR /app
RUN chmod +x start.sh
EXPOSE 8080


ENTRYPOINT [ "/app/start.sh" ]
