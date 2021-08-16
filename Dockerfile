FROM golang:latest 

COPY test-pipeline .

FROM scratch
COPY --from=0 /go/test-pipeline .
CMD ["./test-pipeline"]
