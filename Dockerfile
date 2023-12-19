FROM golang:1.20
WORKDIR /tem
COPY . .
RUN GOPROXY=goproxy.cn  go mod download
RUN go build - o main .
EXPOSE 80
CMD ["./main"]
