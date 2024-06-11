FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app
ENV REACT_APP_BACKEND_URL="http://localhost:8000"

COPY . .

RUN npm install
RUN npm run build && npm install -g serve

CMD serve -s -l 5000 build
