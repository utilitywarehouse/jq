FROM alpine
LABEL maintainer="system@utilitywarehouse.co.uk"

ENV VERSION='1.6'

RUN wget https://github.com/stedolan/jq/releases/download/jq-${VERSION}/jq-linux64 && \
    mv jq-linux64 /bin/jq && \
    chmod a+x /bin/jq

ENTRYPOINT ["jq"]
