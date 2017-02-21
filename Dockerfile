FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install json2csv --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["json2csv"]
CMD ["--help"]
