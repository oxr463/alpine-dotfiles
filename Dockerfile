FROM alpine:latest

RUN apk update && \
    apk add alpine-sdk \
            less \
	    py3-pip \
            shadow \
            sudo \
            tree \
            vim

COPY . /home/abuild/.alpine
WORKDIR /home/abuild/.alpine

RUN mkdir -p /usr/local/share/oxr463_alpine_sdk && \
    cp ./src/* /usr/local/share/oxr463_alpine_sdk/ && \
    chmod +x /usr/local/share/oxr463_alpine_sdk/* && \
    python3 -m pip install --upgrade pip setuptools wheel && \
    python3 setup.py install && \
    mkdir -p /home/abuild/packages && \
    useradd -N abuild && \
    usermod -aG abuild abuild && \
    echo "abuild:abuild" | /usr/sbin/chpasswd && \
    echo "abuild    ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chmod g+w /var/cache/distfiles && \
    chown -R abuild:abuild /home/abuild

USER abuild
WORKDIR /home/abuild/aports
ENV APORTS_DIRECTORY="/home/abuild/aports" PATH="${PATH}:/usr/local/share/oxr463_alpine_sdk"

