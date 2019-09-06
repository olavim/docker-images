FROM olavim/ci-alpine-docker:1.0.0

# Install sqitch
RUN apk add --no-cache postgresql-dev bash nodejs xz \
	&& cpanm App::Sqitch DBD::Pg -n \
	&& mkdir -p /usr/local/lib

WORKDIR /usr/local/lib

# Install Heroku CLI
RUN curl https://cli-assets.heroku.com/heroku-linux-x64.tar.xz | tar -xJ \
	&& ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku \
	&& rm /usr/local/lib/heroku/bin/node \
	&& heroku version

WORKDIR /
