FROM golang:1.20

COPY . /build
WORKDIR /build
RUN go build -o /app/server
RUN rm -r /build

COPY start.sh /app/start.sh
RUN chmod +x start.sh
WORKDIR /app
EXPOSE 8080


ENTRYPOINT [ "/app/start.sh" ]
