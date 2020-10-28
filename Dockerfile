ARG BUILD_FROM=hassioaddons/base:latest
FROM ${BUILD_FROM}

# Build arguments
ARG BUILD_VERSION
ARG BUILD_ARCH=amd64

WORKDIR /usr/src

RUN apk add --no-cache \
        python3 \
	py3-pip \
	musl \
    && apk add --no-cache --virtual .build-deps \
	build-base \
	python3-dev \
        git \
    # ha-zwave-network
    && git clone --depth=1 https://github.com/elad-bar/ha-zwave-network.git \
    && cd ha-zwave-network \ 
    && pip install --no-cache-dir requests flask aiofiles asyncws \
    && mkdir -p /web \
    && find . -print | sed '/.git|Dockerfile/d' | cpio -pvdm / \
    && apk del .build-deps \
    && cd .. \
    && rm -rf /usr/src/ha-zwave-network.git

COPY data/run.sh /

WORKDIR /
ENTRYPOINT [ "/run.sh" ]
