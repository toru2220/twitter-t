FROM	ruby:2.6.5

RUN	gem install t

RUN	apt-get update && \
	apt-get install -y --no-install-recommends jq libxml2-utils wget curl && \
	rm -rf /var/lib/apt/lists/*

VOLUME 	/conf

WORKDIR /conf

