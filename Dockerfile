FROM golang:latest 

COPY hello .

FROM scratch
COPY --from=0 /go/hello .
CMD ["./hello"]
