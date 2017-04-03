FROM aafrey/fwatchdog:alpine
RUN apk add --no-cache nodejs

ADD . /
WORKDIR /submitToAirtable
RUN npm install

ENV fprocess="coffee submitToAirtable.coffee"
CMD ["fwatchdog"]