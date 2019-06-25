FROM node:12.4.0-alpine

LABEL global.florence.author="Leo Muller <leo@fingermark.tech>"
LABEL global.florence.version="0.0.1"

RUN apk add --no-cache bash \
        git \
        openssh \
    && npm install -g semantic-release@15 \
        @semantic-release/changelog \
        @semantic-release/commit-analyzer \
        @semantic-release/exec \
        @semantic-release/git \
        @semantic-release/release-notes-generator
