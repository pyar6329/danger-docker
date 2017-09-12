FROM ruby:2.4.1-alpine

ENV DANGER_INSTALL_PATH="/usr/src/danger" WORKPATH="/usr/src/app" PATH="/usr/src/danger/.bin:${PATH}"

RUN set -x \
  && mkdir -p "${DANGER_INSTALL_PATH}" "${WORKPATH}" \
  && apk add --no-cache git

COPY Gemfile Gemfile.lock ${DANGER_INSTALL_PATH}/

RUN set -x \
  && cd "${DANGER_INSTALL_PATH}" \
  && CPU_CORES="$(grep -c "cpu cores" < /proc/cpuinfo)" \
  && bundle install --jobs="${CPU_CORES}" --retry 5 --path "${DANGER_INSTALL_PATH}/.bundle" --binstubs "${DANGER_INSTALL_PATH}/.bin"

WORKDIR ${WORKPATH}

CMD ["danger"]
