FROM golang:1.15.5
WORKDIR /tem
ADD go-packages.tar.gz  /tem
RUN GOPROXY=goproxy.cn  go build -o webapp .
EXPOSE 8080
CMD ["./webapp"]
