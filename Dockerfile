FROM ruby:2.4.1-alpine

ENV WORKPATH="/usr/src/app"

RUN set -x \
  && mkdir -p "${WORKPATH}" \
  && apk add --no-cache git \
  && gem install danger \
                 danger-todoist \
                 danger-lgtm

WORKDIR ${WORKPATH}

CMD ["danger"]
