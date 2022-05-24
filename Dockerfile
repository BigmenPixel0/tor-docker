FROM alpine:3.16.0

RUN apk add tor=0.4.6.9-r0 --force-broken-world

COPY torrc /etc/tor/torrc

ENTRYPOINT ["tor"]

CMD ["-f", "/etc/tor/torrc"]
