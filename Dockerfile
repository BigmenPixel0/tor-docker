FROM alpine:3.18.4

RUN apk add tor=0.4.7.13-r0 --force-broken-world

COPY torrc /etc/tor/torrc

ENTRYPOINT ["tor"]

CMD ["-f", "/etc/tor/torrc"]
