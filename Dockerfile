FROM ruby:3.1.1-alpine3.14 AS dev
COPY .build-deps /
RUN cat .build-deps | xargs apk add
WORKDIR /flat-search
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
