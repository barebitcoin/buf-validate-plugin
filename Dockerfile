FROM golang:alpine AS builder

# GOPATH is the default workdir, won't work
WORKDIR /work

COPY go.mod go.sum ./

RUN go install -v github.com/envoyproxy/protoc-gen-validate

FROM alpine AS final

COPY --from=builder /go/bin/protoc-gen-validate /usr/bin/protoc-gen-validate

# Verify we got the binary on PATH
RUN which protoc-gen-validate

ENTRYPOINT [ "protoc-gen-validate" ]