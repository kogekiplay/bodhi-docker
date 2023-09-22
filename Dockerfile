FROM alpine:latest
LABEL org.opencontainers.image.source="https://github.com/kogekiplay/bodhi-docker"
RUN apk add --no-cache fish curl file
RUN curl -sL "https://github.com/kogekiplay/bodhi/raw/main/product" -o /opt/product && chmod +x /opt/product
CMD /usr/bin/fish /opt/product -v debug -d /gateway
