build: generate-scripture-index
    rm -rf docs
    hugo -d docs --buildFuture

generate-scripture-index: build-tools
    rm -rf content/ref
    ./buildtools/target/release/lta create-scripture-index

build-tools:
    #!/usr/bin/env bash
    set -euxo pipefail
    cd buildtools
    nix develop -c cargo build --release

clean:
    rm -rf content/ref docs

localhost: generate-scripture-index
    hugo server --baseURL http://localhost:1313 --disableFastRender --buildFuture --buildDrafts

aya: generate-scripture-index
    hugo server --baseURL http://aya:1313 --bind 192.168.178.112 --disableFastRender --buildFuture --buildDrafts
