FROM golang:1.20

COPY . /build
WORKDIR /build
RUN go build -o /app/server
RUN rm -r /build


WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x start.sh
EXPOSE 8080



ENTRYPOINT [ "./start.sh" ]
