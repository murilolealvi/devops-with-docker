FROM node:16-alpine

EXPOSE 5000


RUN adduser -S app

WORKDIR /usr/src/app
RUN chown -R app /usr/src/app
RUN mkdir ~/.npm-global 
ENV NPM_CONFIG_PREFIX=~/.npm-global

USER app


COPY --chown=app:app package*.json .
#COPY .
#RUN chown -R app:app

#ENV REACT_APP_BACKEND_URL="http://localhost:8000"

COPY . .

RUN npm install
RUN npm run build && npm install -g serve


CMD serve -s -l 5000 build
