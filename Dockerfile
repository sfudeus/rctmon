FROM python:3-alpine
LABEL maintainer="Kai Timmer <kaitimmer@users.noreply.github.com>"

RUN apk update && apk add git
RUN pip3 install -U git+https://github.com/kaitimmer/rctmon

CMD ["rctmon", "-c", "/config.yaml", "daemon"]
EXPOSE 9831
USER 1
