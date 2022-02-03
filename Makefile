VALIDATE_VERSION := $(shell go list -m -f '{{.Replace.Version}}' github.com/envoyproxy/protoc-gen-validate | cut --fields=1,3 --delimiter '-')
PLUGIN_VERSION := 1

BASE_NAME := plugins.buf.build/ngu-tek
IMAGE := "${BASE_NAME}/validate:${VALIDATE_VERSION}-${PLUGIN_VERSION}"

gen-validate-image: 
	docker build --tag ${IMAGE} .
