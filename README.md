# buf-validate-plugin

[Buf](https://buf.build/) plugin for
[`protoc-gen-validate`](https://github.com/envoyproxy/protoc-gen-validate).

It is currently based off of a
[fork](https://github.com/torkelrogstad/protoc-gen-validate) that adds support
for properly handling NaN in float comparisons. Once that is merged, this plugin
will be based off of the original repo.

# Usage

```yaml
# buf.gen.yaml

version: v1

plugins:
  - remote: buf.build/ngu-tek/plugins/validate:v0.6.4-386e294f7d80-1
    out: gen
    # https://github.com/envoyproxy/protoc-gen-validate#parameters
    opt:
      - lang=go
      - paths=source_relative
```
