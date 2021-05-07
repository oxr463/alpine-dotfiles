FROM alpine:latest

RUN apk update && \
    apk add alpine-sdk \
            less \
            shadow \
            sudo \
            tree \
            vim

RUN mkdir -p /home/abuild/packages && \
    useradd -N abuild && \
    usermod -aG abuild abuild && \
    echo "abuild:abuild" | /usr/sbin/chpasswd && \
    echo "abuild    ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chmod g+w /var/cache/distfiles && \
    chown -R abuild:abuild /home/abuild

COPY ./entrypoint.sh /home/abuild/.entrypoint.sh
RUN chmod +x /home/abuild/.entrypoint.sh

USER abuild
WORKDIR /home/abuild/aports

ENTRYPOINT ["/home/abuild/.entrypoint.sh"]
