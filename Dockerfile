FROM golang:latest
RUN mkdir -p /go/src/gopee
COPY . /go/src/gopee

WORKDIR /go/src/gopee
RUN go build -i
EXPOSE 8080
ENTRYPOINT ./gopee