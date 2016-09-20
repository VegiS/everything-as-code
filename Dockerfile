FROM qaware-oss-docker-registry.bintray.io/base/alpine-k8s-openjdk8:8u92
MAINTAINER M.-Leander Reimer <mario-leander.reimer@qaware.de>

RUN mkdir -p /app
ADD build/distributions/everything-as-code-1.0.0.tar /app

WORKDIR /app/everything-as-code-1.0.0
RUN chmod 755 bin/everything-as-code

EXPOSE 18080

CMD ./bin/everything-as-code