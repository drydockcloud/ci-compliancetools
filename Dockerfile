FROM python:3.7-alpine
LABEL exposed.command.multiple.createfiles=createfiles \
      exposed.command.multiple.makefamilies=makefamilies \
      exposed.command.multiple.makessp=makessp

ENV PATH=$PATH:/usr/local/bin

COPY results.sh /
COPY requirements.txt /
RUN set -eux ; \
    apk add git \
    && apk add build-base \
    && pip install -r /requirements.txt \
    && pip install git+https://github.com/CivicActions/compliancetools.git#egg=compliancetools \
    && wget -O /usr/local/bin/gh-md-toc https://raw.githubusercontent.com/ekalinin/github-markdown-toc/master/gh-md-toc \
    && chmod a+x /usr/local/bin/gh-md-toc

VOLUME /results
WORKDIR /src
ENTRYPOINT ["/results.sh"]
CMD ["--help"]
