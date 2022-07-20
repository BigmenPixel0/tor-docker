FROM alpine:3.16.1

RUN apk add tor=0.4.7.8-r0 --force-broken-world

COPY torrc /etc/tor/torrc

ENTRYPOINT ["tor"]

CMD ["-f", "/etc/tor/torrc"]
