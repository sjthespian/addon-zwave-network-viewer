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
        libffi-dev openssl-dev \
    # ha-zwave-network
    && git clone --depth=1 https://github.com/elad-bar/ha-zwave-network.git \
    && cd ha-zwave-network \ 
    && pip install --no-cache-dir requests asyncws aiofiles flask pyopenssl \
    && mkdir -p /web \
    && find . -print | sed '/.git|Dockerfile/d' | cpio -pvdm / \
    && apk del .build-deps \
    && cd .. \
    && rm -rf /usr/src/ha-zwave-network.git \
    && mkdir /debug

COPY data/run.sh /

WORKDIR /
ENTRYPOINT [ "/run.sh" ]
