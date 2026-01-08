docker run --rm -v $(pwd)/packages:/packages alpine:latest \
sh -c "apk add --download-only --destdir /packages git"
