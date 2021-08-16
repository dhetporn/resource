FROM golang:latest 

COPY hello.go .
RUN go build -o hello-world hello.go

FROM scratch
COPY --from=0 /go/hello-world .
CMD ["./hello-world"]
