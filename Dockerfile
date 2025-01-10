FROM alpine:latest
RUN apk add --no-cache \
bash \
tar \
wget \
grep
RUN wget https://gitlab.com/slackermedia/bashcrawl/-
/archive/stable-2024.02.09/bashcrawl-stable-2024.02.
09.tar.gz \
&& tar xzf bashcrawl-stable-2024.02.09.tar.gz \
&& mv bashcrawl-stable-2024.02.09 bashcrawl
WORKDIR /bashcrawl/entrance
ENTRYPOINT ["/bin/bash"]
