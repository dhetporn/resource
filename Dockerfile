FROM golang:1.16

RUN mkdir /app
COPY hello.go /app/
WORKDIR /app
RUN go build -o hello hello.go


FROM scratch
COPY --from=0 /app/hello app/hello
ENTRYPOINT ["/app/hello"]
