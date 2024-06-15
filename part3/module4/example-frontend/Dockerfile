FROM node:16-alpine as builder


RUN adduser -S builder
WORKDIR /build
RUN chown -R builder /build && mkdir ~/.npm-global && apk add curl && \
    curl -sf https://gobinaries.com/tj/node-prune | sh && apk del curl && \
    rm -rf /var/cache/apk/*
ENV NPM_CONFIG_PREFIX=~/.npm-global

USER builder

COPY --chown=builder . .

RUN npm install && npm run build && npm install -g serve



FROM node:16-alpine

RUN adduser -S app

EXPOSE 5000
WORKDIR /app

USER app

COPY --chown=app --from=builder /build/node_modules ./node_modules

CMD serve -s -l 5000 build
