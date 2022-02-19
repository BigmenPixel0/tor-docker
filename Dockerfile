FROM alpine:latest

RUN apk add tor=0.4.6.9-r0 --force-broken-world

COPY torrc /etc/tor/torrc
RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT ["tor"]

CMD ["-f", "/etc/tor/torrc"]
