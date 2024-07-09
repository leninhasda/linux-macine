FROM debian:bookworm

WORKDIR /home/app

RUN apt update \
  && apt -y install ansible git

COPY ./ ./

CMD [ "bash" ]