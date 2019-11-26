FROM node:10.16.3-alpine

# To handle 'not get uid/gid'
RUN npm config set unsafe-perm true

RUN npm i -g serverless apk update && \
  apk add git python py-pip curl && \
  pip install awscli

COPY entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
