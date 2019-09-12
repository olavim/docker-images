FROM python:3-alpine

RUN apk update \
	&& apk add --no-cache build-base gcc g++ python3-dev musl-dev

RUN pip install --upgrade pip
RUN pip install libsass
